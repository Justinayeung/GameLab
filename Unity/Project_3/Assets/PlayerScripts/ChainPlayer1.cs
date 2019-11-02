using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class ChainPlayer1 : MonoBehaviour
{
    float speed = 10f;
    public int playerNum;
    public float waterNum;
    public Transform bulletSpawn_Chain;
    public Transform chainRespawn;
    public GameObject chainWater;
    public GameObject chainWaterPosition;
    public GameObject waterPickUp;
    public GameObject trappedCage;
    public GameObject SPChain;
    public GameObject SPChainDirection;
    public GameObject chainSpin1;
    public GameObject chainSpin2;
    public GameObject chainSpin3;
    public GameObject freezeParticles;
    public Rigidbody bullet;
    public float bulletSpeed = 10f;
    public Image healthBar;
    public Image spBar;
    public Material normalColor;
    public Chain_WaterArray1 pool;
    public bool chain_waterEmpty = true;
    public bool onGround = false;
    bool pickup = true;
    bool moving = false;
    bool treading = false;
    bool treadOnce = false;
    bool frozen = false;
    bool spfill = false;
    bool trapped = false;
    bool slowed = false;
    public bool permaDead = false;
    bool toOther = false;
    bool spinning = false;

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
    Renderer rend;
    Rigidbody rb;
    private Transform target;
    private CapsuleCollider cap;
    public WinManager winManage;

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
        treading = false;
        treadOnce = false;
        frozen = false;
        permaDead = false;
        trapped = false;
        slowed = false;
        spfill = false;
        toOther = false;
        chainWater.SetActive(false);
        SPChain.SetActive(false);
        SPChainDirection.SetActive(false);
        trappedCage.SetActive(false);
        chainSpin1.SetActive(false);
        chainSpin2.SetActive(false);
        chainSpin3.SetActive(false);
        healthBar.fillAmount = 1.0f;
        spBar.fillAmount = 1.0f;
        radialfill = 1f;
        rb = GetComponent<Rigidbody>();
        rend = GetComponent<Renderer>();
        cap = GetComponent<CapsuleCollider>();
        cap.enabled = false;
        rend.enabled = true;
    }

    void FixedUpdate()
    {
        //Moving using left joystick
        if (onGround && !frozen && !permaDead && !trapped && !toOther && !winManage.won)
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
            }
            else
            {
                moving = false;
            }

            if (Input.GetButtonDown("Select" + playerNum))
            {
                rb.AddForce(Vector3.up * 25f, ForceMode.Impulse);
            }
        }
        else
        {
            //Gravity
            rb.AddForce(Vector3.down * 10f, ForceMode.Impulse);
        }
    }

    void Update()
    {
        //Shooting = knock back
        timer++;
        if (timer >= 10f)
        {
            if (Input.GetButtonDown("Shoot" + playerNum) && !frozen && !permaDead && !trapped && !winManage.won)
            {
                Shooting.Play();
                StartCoroutine(ChainAttack());
            }
        }

        if (spinning)
        {
            Vector3 rotation = new Vector3(0, 1f, 0);
            chainSpin1.SetActive(true);
            chainSpin2.SetActive(true);
            chainSpin3.SetActive(true);
            chainSpin1.transform.RotateAround(transform.position, rotation, -30f);
            chainSpin2.transform.RotateAround(transform.position, rotation, -30f);
            chainSpin3.transform.RotateAround(transform.position, rotation, -30f);
        }
        else
        {
            chainSpin1.SetActive(false);
            chainSpin2.SetActive(false);
            chainSpin3.SetActive(false);
        }

        //SP = grab others stun a bit and to go to them
        if (Input.GetButton("SP" + playerNum) && !frozen && !trapped && !permaDead && !spfill && !winManage.won)
        {
            SPChainDirection.SetActive(true);
            //Vector3 rotation = new Vector3(0, 1f, 0);
            //SPChainDirection.transform.RotateAround(transform.position, rotation, -5f);
        }
        //If input is let go then show the chain grab
        else if (Input.GetButtonUp("SP" + playerNum) && !frozen && !trapped && !permaDead && !spfill && !winManage.won)
        {
            SP.Play();
            SPChainDirection.SetActive(false);
            cap.enabled = true;
            SPChain.SetActive(true);
            radialfill = 0f;
            spfill = true;
        }
        else
        {
            SP.Stop();
            SPChainDirection.SetActive(false);
            SPChain.SetActive(false);
            cap.enabled = false;
        }

        //If you landed the SP, move towards other player
        if (toOther)
        {
            float step = 15f * Time.deltaTime;
            Vector3 moveDirection = Vector3.MoveTowards(transform.position, target.position, step);
            transform.position = moveDirection;
            transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(moveDirection), 0.15f);

            if (Vector3.Distance(transform.position, target.transform.position) < 2.5f)
            {
                toOther = false;
            }
        }

        //SP timer
        spBar.fillAmount = radialfill;
        if (spfill)
        {
            radialfill += 0.01f;
        }
        if (spBar.fillAmount >= 1f)
        {
            spfill = false;
        }

        //Check Speed
        if (!frozen && !trapped && !permaDead && !toOther && !winManage.won)
        {
            //Dash = switch positions with other character
            if (Input.GetButtonDown("Dash" + playerNum) )
            {
                Dash.Play();
                if (chain_waterEmpty)
                {
                    speed = 15f;
                }
                else
                {
                    speed = 10f;
                }
            }
            else
            {
                if (slowed)
                {
                    speed = 3f;
                }
                else
                {
                    if (chain_waterEmpty)
                    {
                        speed = 7f;
                    }
                    else
                    {
                        speed = 5f;
                    }
                }
            }

            if (slowed)
            {
                speed = 3f;
            }
            else
            {
                if (chain_waterEmpty)
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

        //Checks if you have gotten water or not
        if (!chain_waterEmpty)
        {
            pickup = false;
            chainWater.SetActive(true);
        }
        else
        {
            pickup = true;
            chainWater.SetActive(false);
        }

        //Check if you are moving in the water
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
        //Check if you are on the ground
        if (other.gameObject.CompareTag("Ground"))
        {
            onGround = true;
        }

        //Respawning = loses water
        if (other.gameObject.CompareTag("Respawn"))
        {
            chain_waterEmpty = true;
        }
    }

    void OnCollisionExit(Collision other)
    {
        //Checks if you leave the ground
        if (other.gameObject.CompareTag("Ground"))
        {
            onGround = false;
        }
    }

    void OnTriggerEnter(Collider other)
    {
        //Checks if you get it by a bullet = drop water
        if (other.CompareTag("Bullet"))
        {
            Destroy(other.gameObject);
            StartCoroutine(Flicker());
            if (!chain_waterEmpty)
            {
                WaterPickup_Place.Play();
                pickup = false;
                Instantiate(waterPickUp, chainWaterPosition.transform.position, Quaternion.identity);
                chain_waterEmpty = true;
                StartCoroutine(TimePick());
            }
        }

        //Checks if you can pick up water 
        if (other.CompareTag("WaterPickUp"))
        {
            if (chain_waterEmpty && pickup)
            {
                WaterPickup_Place.Play();
                Destroy(other.gameObject);
                chain_waterEmpty = false;
                pickup = false;
            }
        }

        //If you are colliding with water = treading
        if (other.CompareTag("Water") && moving)
        {
            treadOnce = false;
        }

        //If you obtain water
        if (other.CompareTag("WaterPlaceChain") && !chain_waterEmpty)
        {
            WaterPickup_Place.Play();
            chain_waterEmpty = true;
        }

        //if you collide with freeze shot
        if (other.CompareTag("IceSP"))
        {
            frozen = true;
            StartCoroutine(FrozenTime());
        }

        //If you collide with trap cage
        if (other.CompareTag("TrapSP"))
        {
            Destroy(other.gameObject);
            StartCoroutine(InTrap());
        }

        //If you collide with Grass slow
        if (other.CompareTag("GrassSP"))
        {
            Destroy(other.gameObject);
            StartCoroutine(GrassSlow());
        }

        //Checks if your SP hits other players
        if(other.CompareTag("IcePlayer") || other.CompareTag("TrapPlayer") || other.CompareTag("GrassPlayer"))
        {
            target = other.transform;
            target.transform.localScale = other.transform.localScale;
            target.transform.position = other.transform.position;
            toOther = true;
        }
    }

    void OnTriggerStay(Collider other)
    {
        //If you stay in the water = treading
        if (other.CompareTag("Water"))
        {
            if (moving)
            {
                treading = true;
            }
        }

        if (other.CompareTag("WaterRising"))
        {
            Injured.Play();
            healthBar.fillAmount -= 0.001f;
        }
    }

    void OnTriggerExit(Collider other)
    {
        //If you exit the water = no treading
        if (other.CompareTag("Water"))
        {
            treading = false;
            WaterTread.Stop();
        }
    }

    IEnumerator ChainAttack()
    {
        spinning = true;
        yield return new WaitForSeconds(1f);
        spinning = false;
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
