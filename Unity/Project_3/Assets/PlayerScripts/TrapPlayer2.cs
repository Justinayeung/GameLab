using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class TrapPlayer2 : MonoBehaviour
{
    float speed;
    public int playerNum;
    public float waterNum;
    public Transform bulletSpawn_Trap;
    public Transform trapSpawn;
    public Transform trapRespawn;
    public GameObject trapWater;
    public GameObject trapWaterPosition;
    public GameObject waterPickUp;
    public GameObject cage;
    public GameObject placeTrap;
    public GameObject freezeParticles;
    public Rigidbody bullet;
    public float bulletSpeed = 10f;
    public Image healthBar;
    public Image spBar;
    public Material normalColor;
    public Trap_WaterArray2 pool;
    public bool trap_waterEmpty = true;
    public bool onGround = false;
    bool pickup = true;
    bool moving = false;
    bool treading = false;
    bool treadOnce = false;
    bool frozen;
    bool spfill = false;
    bool cageProtected = false;
    bool slowed = false;
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

    Color flickerColor = Color.red;
    int timer;
    float radialfill;
    Renderer rend;
    Rigidbody rb;
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
        spfill = false;
        cageProtected = false;
        slowed = false;
        permaDead = false;
        trapWater.SetActive(false);
        radialfill = 1f;
        spBar.fillAmount = 1f;
        healthBar.fillAmount = 1.0f;
        rb = GetComponent<Rigidbody>();
        rend = GetComponent<Renderer>();
        rend.enabled = true;
        cage.SetActive(false);
    }

    void FixedUpdate()
    {
        //Moving using left joystick
        if (onGround && !frozen && !permaDead && !winManage.won)
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
        //Shooting bullets
        timer++;
        if (timer >= 10f)
        {
            if (Input.GetButtonDown("Shoot" + playerNum) && !frozen && !permaDead && !winManage.won)
            {
                anim.SetBool("Shoot", true);
                Shooting.Play();
                Rigidbody clone_Trap;
                clone_Trap = Instantiate(bullet, bulletSpawn_Trap.position, transform.rotation);
                clone_Trap.GetComponent<Rigidbody>().AddForce(transform.forward * bulletSpeed, ForceMode.Impulse);
                timer = 0;
            }
            else
            {
                anim.SetBool("Shoot", false);
            }
        }

        //SP placing traps
        if (Input.GetButtonDown("SP" + playerNum) && !spfill && !permaDead && !winManage.won)
        {
            SP.Play();
            anim.SetBool("stamp", true);
            Instantiate(placeTrap, trapSpawn.position, transform.rotation);
            radialfill = 0f;
            spfill = true;
        }
        else
        {
            anim.SetBool("stamp", false);
        }

        //SP timer
        spBar.fillAmount = radialfill;
        if (spfill)
        {
            radialfill += 0.005f;
        }
        if (spBar.fillAmount >= 1f)
        {
            spfill = false;
        }

        //Dash == cage protect and not frozen
        if (!frozen && !permaDead && !winManage.won)
        {
            if (Input.GetButton("Dash" + playerNum))
            {
                Dash.Play();
                speed = 0f;
                cage.SetActive(true);
                cageProtected = true;
                rb.mass = 1000;
            }
            else
            {
                rb.mass = 10;

                if (slowed)
                {
                    speed = 2f;
                }
                else
                {
                    if (trap_waterEmpty)
                    {
                        speed = 9f;
                    }
                    else
                    {
                        speed = 7f;
                    }
                }
                cage.SetActive(false);
                cageProtected = false;
            }
        }
        else
        {
            rb.mass = 10;
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

        //Checking if trap water is empty or not
        if (!trap_waterEmpty)
        {
            pickup = false;
            trapWater.SetActive(true);
        }
        else
        {
            pickup = true;
            trapWater.SetActive(false);
        }

        //Checking if trap is on water
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
        //Checking if you are on ground
        if (other.gameObject.CompareTag("Ground"))
        {
            onGround = true;
        }

        //Checking if you are respawning
        if (other.gameObject.CompareTag("Respawn"))
        {
            Respawn.Play();
            trap_waterEmpty = true;
            StartCoroutine(TimePick());
        }
    }

    void OnCollisionExit(Collision other)
    {
        //Checking if you leave gorund = fall
        if (other.gameObject.CompareTag("Ground"))
        {
            onGround = false;
        }
    }

    void OnTriggerEnter(Collider other)
    {
        //Checking if you get it by bullet = drop water
        if (other.CompareTag("Bullet"))
        {
            Destroy(other.gameObject);
            StartCoroutine(Flicker());
            if (!trap_waterEmpty)
            {
                WaterPickup_Place.Play();
                pickup = false;
                Instantiate(waterPickUp, trapWaterPosition.transform.position, Quaternion.identity);
                trap_waterEmpty = true;
                StartCoroutine(TimePick());
            }
        }

        if (other.CompareTag("ChainAttack"))
        {
            StartCoroutine(Flicker());
            if (!trap_waterEmpty)
            {
                WaterPickup_Place.Play();
                pickup = false;
                Instantiate(waterPickUp, trapWaterPosition.transform.position, Quaternion.identity);
                trap_waterEmpty = true;
                StartCoroutine(TimePick());
            }
        }

        //Checking if you can pick up water
        if (other.CompareTag("WaterPickUp"))
        {
            if (trap_waterEmpty && pickup)
            {
                WaterPickup_Place.Play();
                Destroy(other.gameObject);
                trap_waterEmpty = false;
                pickup = false;
            }
        }

        //Checking if you collide with water
        if (other.CompareTag("Water") && moving)
        {
            treadOnce = false;
        }

        //Checking if you are placing water down
        if (other.CompareTag("WaterPlaceTrap") && !trap_waterEmpty)
        {
            WaterPickup_Place.Play();
            trap_waterEmpty = true;
        }

        //Checking if you get hit by freeze shot and not protected
        if (other.CompareTag("IceSP") && !cageProtected)
        {
            frozen = true;
            StartCoroutine(FrozenTime());
        }

        //Checking if you hit grass slow
        if (other.CompareTag("GrassSP"))
        {
            Destroy(other.gameObject);
            StartCoroutine(GrassSlow());
        }
    }

    void OnTriggerStay(Collider other)
    {
        //Checking if you stay in water = treading
        if(other.CompareTag("Water") && moving)
        {
            treading = true;
        }
    }

    void OnTriggerExit(Collider other)
    {
        //Checking if you leave water = no treading
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

    IEnumerator GrassSlow()
    {
        slowed = true;
        yield return new WaitForSeconds(6f);
        slowed = false;
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

    IEnumerator Flicker()
    {
        rend.material.color = flickerColor;
        yield return new WaitForSeconds(0.05f);
        rend.material = normalColor;
    }
}
