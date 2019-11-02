using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class IcePlayer1 : MonoBehaviour
{
    float speed = 10f;
    public int playerNum;
    public float waterNum;
    public Transform bulletSpawn_Ice;
    public Transform iceRespawn;
    public GameObject iceWater;
    public GameObject iceWaterPosition;
    public GameObject waterPickUp;
    public GameObject icePlatform;
    public GameObject trappedCage;
    public Rigidbody freezeShot;
    public Rigidbody bullet;
    public float bulletSpeed = 10f;
    public Image healthBar;
    public Image spBar;
    public Material normalColor;
    public Ice_WaterArray1 pool;
    public bool ice_waterEmpty = true;
    public bool onGround = false;
    bool pickup = true;
    bool moving = false;
    bool onice = false;
    bool oniceAudio = false;
    bool treading = false;
    bool treadOnce = false;
    bool spfill = false;
    bool trapped = false;
    bool slowed = false;
    public bool permaDead = false;

    public AudioSource Death;
    public AudioSource Respawn;
    public AudioSource iceShooting;
    public AudioSource onIce;
    public AudioSource iceSP;
    public AudioSource Injured;
    public AudioSource WaterPickup_Place;
    public AudioSource WaterTread;
    public AudioSource Caged;

    Color flickerColor = Color.red;
    int timer1;
    int timer2;
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
        onice = false;
        oniceAudio = false;
        treading = false;
        treadOnce = false;
        spfill = false;
        trapped = false;
        slowed = false;
        permaDead = false;
        iceWater.SetActive(false);
        trappedCage.SetActive(false);
        radialfill = 1f;
        healthBar.fillAmount = 1.0f;
        spBar.fillAmount = 1f;
        rb = GetComponent<Rigidbody>();
        rend = GetComponent<Renderer>();
        rend.enabled = true;
    }

    void FixedUpdate()
    {
        //Moving using left joystick
        if (onGround && !trapped && !permaDead && !winManage.won)
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
            rb.AddForce(Vector3.down * 20f, ForceMode.Impulse);
        }
    }

    void Update()
    {
        //for(int i = 1; i < 5; i++)
        //{
        //    if (Input.GetButtonDown("Dash"+i))
        //    {
        //        print("dash "+i);
        //    }
        //}
      
        //Shooting for ice player
        timer1++;
        if (timer1 >= 10f)
        {
            if (Input.GetButtonDown("Shoot" + playerNum) && !trapped && !permaDead && !winManage.won)
            {
                anim.SetBool("shoot", true);
                iceShooting.Play();
                Rigidbody clone_Ice;
                clone_Ice = Instantiate(bullet, bulletSpawn_Ice.position, transform.rotation);
                clone_Ice.GetComponent<Rigidbody>().AddForce(transform.forward * bulletSpeed, ForceMode.Impulse);
                timer1 = 0;
            }
            else
            {
                anim.SetBool("shoot", false);
            }
        }

        //Dashing = creating ice platforms
        timer2++;
        if (timer2 >= 30f)
        {
            if (Input.GetButtonDown("Dash" + playerNum) && !trapped && !permaDead && !winManage.won)
            {
                Instantiate(icePlatform, transform.position, transform.rotation);
                timer2 = 0;
            }
        }

        //Checking if player speed
        if (!trapped && !permaDead)
        {
            if (onice)
            {
                if (!oniceAudio)
                {
                    onIce.Play();
                    oniceAudio = true;
                }

                speed = 10f;
                if (slowed)
                {
                    speed = 3f;
                }
            }
            else
            {
                if(slowed)
                {
                    speed = 2f;
                }
                else
                {
                    if (ice_waterEmpty)
                    {
                        speed = 7f;
                    }
                    else
                    {
                        speed = 5f;
                    }
                }
            }
        }
        else
        {
            speed = 0f;
        }

        //Special Ability == freeze shot
        if (Input.GetButtonDown("SP" + playerNum) && !trapped && !spfill && !permaDead && !winManage.won)
        {
            //anim.SetBool("shoot", true);
            iceSP.Play();
            Rigidbody clone_Freeze;
            clone_Freeze = Instantiate(freezeShot, bulletSpawn_Ice.position, transform.rotation);
            clone_Freeze.GetComponent<Rigidbody>().AddForce(transform.forward * bulletSpeed, ForceMode.Impulse);
            radialfill = 0f;
            spfill = true;
        }
        else
        {
            //anim.SetBool("shoot", false);
        }

        //SP timer
        spBar.fillAmount = radialfill;
        if (spfill)
        {
            radialfill += 0.05f;
        }
        if (spBar.fillAmount >= 1f)
        {
            spfill = false;
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

        //Checking if water collect is empty or not
        if (!ice_waterEmpty)
        {
            pickup = false;
            iceWater.SetActive(true);
        }
        else
        {
            pickup = true;
            iceWater.SetActive(false);
        }

        //Checking if treading on water
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
        //Checking if on ground
        if (other.gameObject.CompareTag("Ground"))
        {
            onGround = true;
        }

        //Checking if respawning = lose water
        if (other.gameObject.CompareTag("Respawn"))
        {
            Respawn.Play();
            ice_waterEmpty = true;
            StartCoroutine(TimePick());
        }
    }

    void OnCollisionExit(Collision other)
    {
        //Checking if leaving ground = fall
        if (other.gameObject.CompareTag("Ground"))
        {
            onGround = false;
        }
    }

    void OnTriggerEnter(Collider other)
    {
        //Checking if hit by bullet = lose water
        if (other.CompareTag("Bullet"))
        {
            Destroy(other.gameObject);
            StartCoroutine(Flicker());
            if (!ice_waterEmpty)
            {
                WaterPickup_Place.Play();
                pickup = false;
                Instantiate(waterPickUp, iceWaterPosition.transform.position, Quaternion.identity);
                ice_waterEmpty = true;
                StartCoroutine(TimePick());
            }
        }

        if (other.CompareTag("ChainAttack"))
        {
            StartCoroutine(Flicker());
            if (!ice_waterEmpty)
            {
                WaterPickup_Place.Play();
                pickup = false;
                Instantiate(waterPickUp, iceWaterPosition.transform.position, Quaternion.identity);
                ice_waterEmpty = true;
                StartCoroutine(TimePick());
            }
        }

        //Checking if you can pick up water
        if (other.CompareTag("WaterPickUp"))
        {
            if (ice_waterEmpty && pickup)
            {
                WaterPickup_Place.Play();
                Destroy(other.gameObject);
                ice_waterEmpty = false;
                pickup = false;
            }
        }

        //Placing water into pool
        if (other.CompareTag("WaterPlaceIce") && !ice_waterEmpty)
        {
            WaterPickup_Place.Play();
            ice_waterEmpty = true;
        }

        //Checking if you are colliding with water
        if (other.CompareTag("Water") && moving)
        {
            treadOnce = false;
        }

        //Checking if you hit a trap
        if (other.CompareTag("TrapSP"))
        {
            Destroy(other.gameObject);
            StartCoroutine(InTrap());
        }

        //Checking if you are slowed
        if (other.CompareTag("GrassSP"))
        {
            Destroy(other.gameObject);
            StartCoroutine(GrassSlow());
        }
    }

    void OnTriggerStay(Collider other)
    {
        //Checking if you are on ice
        if (other.CompareTag("IcePlatform"))
        {
            onice = true;
        }
        else
        {
            oniceAudio = false;
        }

        //Checking if you are in water = treading
        if (other.CompareTag("Water") && moving)
        {
             treading = true;
        }

        if (other.CompareTag("WaterRising"))
        {
            Injured.Play();
            healthBar.fillAmount -= 0.001f;
        }
    }

    void OnTriggerExit(Collider other)
    {
        //Checking if you leave ice
        if (other.CompareTag("IcePlatform"))
        {
            oniceAudio = false;
            onIce.Stop();
            onice = false;
        }

        //Checking if you leave water
        if (other.CompareTag("Water"))
        {
            treading = false;
            WaterTread.Stop();
        }
    }

    IEnumerator StopShootingAnim()
    {
        yield return new WaitForSeconds(2f);
        anim.SetBool("shoot", false);
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

    IEnumerator InTrap()
    {
        Caged.Play();
        trapped = true;
        trappedCage.SetActive(true);
        yield return new WaitForSeconds(3f);
        trappedCage.SetActive(false);
        trapped = false;
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
