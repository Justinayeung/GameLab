using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class GrassPlayer2 : MonoBehaviour
{
    float speed = 10f;
    public int playerNum;
    public float waterNum;
    public Transform bulletSpawn_Grass;
    public Transform grassRespawn;
    public GameObject grassWater;
    public GameObject grassWaterPosition;
    public GameObject waterPickUp;
    public GameObject trappedCage;
    public GameObject grassSlow;
    public GameObject freezeParticles;
    public GameObject underParticles;
    public Rigidbody bullet;
    public float bulletSpeed = 10f;
    public Image healthBar;
    public Image spBar;
    public Material normalColor;
    public Grass_WaterArray2 pool;
    public bool grass_waterEmpty = true;
    public bool onGround = false;
    bool pickup = true;
    bool moving = false;
    bool treading = false;
    bool treadOnce = false;
    bool frozen = false;
    bool trapped = false;
    bool spfill = false;
    bool under = false;
    bool underTimer = false;
    public bool permaDead = false;

    public AudioSource Death;
    public AudioSource Respawn;
    public AudioSource Shooting;
    public AudioSource Dash;
    public AudioSource SP;
    public AudioSource Injured;
    public AudioSource WaterPickup_Place;
    public AudioSource WaterTread;
    public AudioSource Freeze;
    public AudioSource Caged;

    Color flickerColor = Color.red;
    int timer;
    float radialfill;
    public GameObject rend;
    Rigidbody rb;
    BoxCollider boxC;
    public Animator anim;
    public WinManager winManage;

    void Awake()
    {
        print(playerNum + ", " + PublicVars.characters[playerNum - 1]);
        //update the player number to they joystic number saved in the array
        playerNum = PublicVars.characters[playerNum - 1];
        if (playerNum == -1)
        {
            Destroy(gameObject); // Destroy any characters that were not picked and are not in the game
        }

    }

    void Start()
    {
        pickup = true;
        moving = false;
        treading = false;
        treadOnce = false;
        frozen = false;
        trapped = false;
        under = false;
        permaDead = false;
        trappedCage.SetActive(false);
        grassWater.SetActive(false);
        spfill = false;
        radialfill = 1f;
        healthBar.fillAmount = 1.0f;
        rend.SetActive(true);
        rb = GetComponent<Rigidbody>();
        boxC = GetComponent<BoxCollider>();
        underParticles.SetActive(false);
    }

    void FixedUpdate()
    {
        //Moving using left joystick
        if (onGround && !frozen && !trapped && !permaDead && !winManage.won)
        {
            float moveHorizontal = Input.GetAxis("Horizontal" + playerNum);
            float moveVertical = Input.GetAxis("Vertical" + playerNum);

            Vector3 move = new Vector3(moveHorizontal, 0, moveVertical);
            rb.velocity = move * speed;

            //If using input then rotate towards direction
            if (moveHorizontal != 0 && moveVertical != 0)
            {
                transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(move), 0.1f);
                moving = true;
                anim.SetBool("isRunning", true);
            }
            else
            {
                moving = false;
                anim.SetBool("isRunning", false);
            }

            if (Input.GetButtonDown("Select" + playerNum))
            {
                rb.AddForce(Vector3.up * 200f, ForceMode.Impulse);
            }
        }
        else
        {
            //Gravity
            rb.AddForce(Vector3.down * 50f, ForceMode.Impulse);
        }
    }

    void Update()
    {
        //Shooting leaf
        timer++;
        if (timer >= 10f)
        {
            if (Input.GetButtonDown("Shoot" + playerNum) && !frozen && !trapped && !permaDead && !winManage.won)
            {
                anim.SetBool("shoot", true);
                Shooting.Play();
                Rigidbody clone_Dirt;
                clone_Dirt = Instantiate(bullet, bulletSpawn_Grass.position, bulletSpawn_Grass.rotation);
                clone_Dirt.GetComponent<Rigidbody>().AddForce(transform.forward * bulletSpeed, ForceMode.Impulse);
                timer = 0;
            }
            else
            {
                anim.SetBool("shoot", false);
            }
        }

        //SP = slow down others
        if (Input.GetButtonDown("SP" + playerNum) && !spfill && !permaDead && !winManage.won)
        {
            SP.Play();
            Instantiate(grassSlow, transform.position, transform.rotation);
            radialfill = 0f;
            spfill = true;
        }

        //SP timer
        spBar.fillAmount = radialfill;
        if (spfill)
        {
            radialfill += 0.008f;
        }
        if (spBar.fillAmount >= 1f)
        {
            spfill = false;
        }

        //Dash go underground
        if (!frozen && !trapped && !permaDead && !underTimer && !winManage.won)
        {
            if (Input.GetButtonDown("Dash" + playerNum))
            {
                underTimer = true;
                Dash.Play();
                StartCoroutine(Underground());
            }

            if (under)
            {
                if (grass_waterEmpty)
                {
                    speed = 8f;
                }
                else
                {
                    speed = 6f;
                }
            }
            else
            {
                if (grass_waterEmpty)
                {
                    speed = 7f;
                }
                else
                {
                    speed = 5f;
                }
            }
        }
        else
        {
            speed = 0f;
        }

        //Health
        if (!permaDead)
        {
            if (pool.scale <= 0 && pool.noWater)
            {
                Injured.Play();
                healthBar.fillAmount -= waterNum;
            }
            if (!pool.noWater)
            {
                healthBar.fillAmount += waterNum;
                if (healthBar.fillAmount >= 1)
                {
                    healthBar.fillAmount = 1;
                }
            }
        }

        if (healthBar.fillAmount <= 0)
        {
            StartCoroutine(PermaDead());
        }

        //Checks if water is empty or not
        if (!grass_waterEmpty)
        {
            pickup = false;
            grassWater.SetActive(true);
        }
        else
        {
            pickup = true;
            grassWater.SetActive(false);
        }

        //Checks if treading on water
        if (treading)
        {
            if (!treadOnce)
            {
                WaterTread.Play();
                treadOnce = true;
            }
        }
        else
        {
            WaterTread.Stop();
        }

        if (!moving)
        {
            WaterTread.Stop();
            treadOnce = false;
        }
    }

    void OnCollisionEnter(Collision other)
    {
        //Check if you are touching the ground
        if (other.gameObject.CompareTag("Ground"))
        {
            onGround = true;
        }

        //Lose water if you respawn
        if (other.gameObject.CompareTag("Respawn"))
        {
            grass_waterEmpty = true;
            StartCoroutine(TimePick());
        }
    }

    void OnCollisionExit(Collision other)
    {
        //Check if you exit the ground = fall
        if (other.gameObject.CompareTag("Ground"))
        {
            onGround = false;
        }
    }

    void OnTriggerEnter(Collider other)
    {
        //Check if you get hit by bullet = lose water
        if (other.CompareTag("Bullet"))
        {
            Destroy(other.gameObject);
            //StartCoroutine(Flicker());
            if (!grass_waterEmpty)
            {
                WaterPickup_Place.Play();
                pickup = false;
                Instantiate(waterPickUp, grassWaterPosition.transform.position, Quaternion.identity);
                grass_waterEmpty = true;
                StartCoroutine(TimePick());
            }
        }

        if (other.CompareTag("ChainAttack"))
        {
            //StartCoroutine(Flicker());
            if (!grass_waterEmpty)
            {
                WaterPickup_Place.Play();
                pickup = false;
                Instantiate(waterPickUp, grassWaterPosition.transform.position, Quaternion.identity);
                grass_waterEmpty = true;
                StartCoroutine(TimePick());
            }
        }

        //Check if you can pick up other people's water
        if (other.CompareTag("WaterPickUp"))
        {
            if (grass_waterEmpty && pickup)
            {
                WaterPickup_Place.Play();
                Destroy(other.gameObject);
                grass_waterEmpty = false;
                pickup = false;
            }
        }

        //Check if on water = treading
        if (other.CompareTag("Water") && moving)
        {
            treadOnce = false;
        }

        //Checking if placing water down
        if (other.CompareTag("WaterPlaceGrass") && !grass_waterEmpty)
        {
            WaterPickup_Place.Play();
            grass_waterEmpty = true;
        }

        //Checking if hit by freeze
        if (other.CompareTag("IceSP"))
        {
            frozen = true;
            StartCoroutine(FrozenTime());
        }

        //Checking if collided with trap
        if (other.CompareTag("TrapSP"))
        {
            Destroy(other.gameObject);
            StartCoroutine(InTrap());
        }
    }

    void OnTriggerStay(Collider other)
    {
        //Chekcing if staying in water trigger for treading
        if (other.CompareTag("Water"))
        {
            if (moving)
            {
                treading = true;
            }
        }
    }

    void OnTriggerExit(Collider other)
    {
        //Checking if you leave water
        if (other.CompareTag("Water"))
        {
            treading = false;
            WaterTread.Stop();
        }
    }

    IEnumerator PermaDead()
    {
        //Instantiate death particle
        bool deathOnce = true;
        if (deathOnce)
        {
            Death.Play();
            deathOnce = false;
        }
        permaDead = true;
        yield return new WaitForSeconds(1f);
        this.gameObject.SetActive(false);
        yield return null;
    }

    IEnumerator Underground()
    {
        underParticles.SetActive(true);
        boxC.enabled = false;
        under = true;
        rend.SetActive(false);
        yield return new WaitForSeconds(2f);
        underParticles.SetActive(false);
        rend.SetActive(true);
        under = false;
        boxC.enabled = true;
        yield return new WaitForSeconds(2f);
        underTimer = false;
    }

    IEnumerator InTrap()
    {
        Caged.Play();
        trapped = true;
        trappedCage.SetActive(true);
        yield return new WaitForSeconds(3f);
        trappedCage.SetActive(false);
        trapped = false;
    }

    IEnumerator FrozenTime()
    {
        Freeze.Play();
        Instantiate(freezeParticles, transform.position, transform.rotation);
        yield return new WaitForSeconds(3f);
        frozen = false;
        Freeze.Stop();
    }

    IEnumerator TimePick()
    {
        yield return new WaitForSeconds(1f);
        pickup = true;
    }

    //IEnumerator Flicker()
    //{
    //    rend.material.color = flickerColor;
    //    yield return new WaitForSeconds(0.05f);
    //    rend.material = normalColor;
    //}
}
