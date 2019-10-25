using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class IcePlayer : MonoBehaviour
{
    float speed = 10f;
    public int playerNum;
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
    public Ice_WaterArray pool;
    public bool ice_waterEmpty = true;
    public bool onGround = false;
    public bool living = true;
    bool pickup = true;
    bool moving = false;
    bool onice = false;
    bool treading = false;
    bool treadOnce = false;
    bool spfill = false;
    bool trapped = false;
    bool slowed = false;
    bool permaDead = false;

    public AudioSource Death;
    public AudioSource Respawn;
    public AudioSource iceShooting;
    public AudioSource onIce;
    public AudioSource Injured;
    public AudioSource WaterPickup;
    public AudioSource WaterPlace;
    public AudioSource WaterTread;

    Color flickerColor = Color.red;
    int timer;
    float radialfill;
    Renderer rend;
    Rigidbody rb;
    public Animator anim;

    //void Awake()
    //{
    //    print(playerNum + ", " + PublicVars.characters[playerNum - 1]);
    //    //update the player number to they joystic number saved in the array
    //    playerNum = PublicVars.characters[playerNum - 1];
    //    if (playerNum == -1)
    //    {
    //        Destroy(gameObject); // Destroy any characters that were not picked and are not in the game
    //    }

    //}

    void Start()
    {
        pickup = true;
        moving = false;
        onice = false;
        treading = false;
        treadOnce = false;
        spfill = false;
        trapped = false;
        slowed = false;
        permaDead = false;
        living = true;
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
        if (onGround && !trapped && !permaDead)
        {
            float moveHorizontal = Input.GetAxis("Horizontal" + playerNum);
            float moveVertical = Input.GetAxis("Vertical" + playerNum);

            Vector3 move = new Vector3(moveHorizontal, 0, moveVertical);
            rb.velocity = move * speed;

            //If using input then rotate towards direction
            if (moveHorizontal != 0 && moveVertical != 0)
            {
                anim.SetBool("run", true);
                transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(move), 0.15f);
                moving = true;
            }
            else
            {
                anim.SetBool("run", false);
                moving = false;
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
        timer++;
        if (timer >= 10f)
        {
            if (Input.GetButtonDown("Shoot" + playerNum) && !trapped && !permaDead)
            {
                anim.SetBool("shoot", true);
                iceShooting.Play();
                Rigidbody clone_Ice;
                clone_Ice = Instantiate(bullet, bulletSpawn_Ice.position, transform.rotation);
                clone_Ice.GetComponent<Rigidbody>().AddForce(transform.forward * bulletSpeed, ForceMode.Impulse);
                timer = 0;
            }
            else
            {
                anim.SetBool("shoot", false);
            }
        }

        //Dashing = creating ice platforms
        if (Input.GetButtonDown("Dash" + playerNum) && !trapped && !permaDead)
        {
            Instantiate(icePlatform, transform.position, transform.rotation);
        }

        //Checking if player speed
        if (!trapped && !permaDead)
        {
            if (onice)
            {
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
        if (Input.GetButtonDown("SP" + playerNum) && !trapped && !spfill && !permaDead)
        {
            //anim.SetBool("shoot", true);
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
                healthBar.fillAmount -= 0.005f;
            }
            if (!pool.noWater)
            {
                healthBar.fillAmount += 0.005f;
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
                WaterPickup.Play();
                Destroy(other.gameObject);
                ice_waterEmpty = false;
                pickup = false;
            }
        }

        //Placing water into pool
        if (other.CompareTag("WaterPlaceIce") && !ice_waterEmpty)
        {
            WaterPlace.Play();
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
            onIce.Play();
            onice = true;
        }

        //Checking if you are in water = treading
        if (other.CompareTag("Water") && moving)
        {
             treading = true;
        }
    }

    void OnTriggerExit(Collider other)
    {
        //Checking if you leave ice
        if (other.CompareTag("IcePlatform"))
        {
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
        Death.Play();
        living = false;
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
        //trap noise
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
