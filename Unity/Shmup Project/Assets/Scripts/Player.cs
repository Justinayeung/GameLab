using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour
{
    public AudioSource blop;
    public AudioSource whoosh;
    public AudioSource retro;
    private Rigidbody2D rb;
    public float speedH;
    public float speedV;
    public float rotationSpeed;
    public GameObject spawnPoint;
    CircleCollider2D player;

    public Rigidbody2D bullet;
    public float bulletSpeed;
    public GameObject dashParticle;
    //public float dashSpeed;
    //private float timer;

    public Camera MainCam;
    private Vector2 screenBounds;
    private float objectWidth;
    private float objectHeight;

    public GameObject Hive;
    public bool HiveDestroyed = false;
    public GameObject hiveParticles;

    Animator anim;
    bool fly;
    bool spin;
    Hive hive;
    bool particleHive = false;

    public int nectarCollect = 0;

    void Start()
    {
        HiveDestroyed = false;
        screenBounds = MainCam.ScreenToWorldPoint(new Vector3(Screen.width, Screen.height, MainCam.transform.position.z));
        objectWidth = transform.GetComponent<SpriteRenderer>().bounds.extents.x;
        objectHeight = transform.GetComponent<SpriteRenderer>().bounds.extents.y;
        hive = GameObject.FindGameObjectWithTag("Hive").GetComponent<Hive>();
        rb = GetComponent<Rigidbody2D>();
        anim = GetComponent<Animator>();
        player = GetComponent<CircleCollider2D>();
        //timer = 0;
    }

    //void FixedUpdate()
    //{
    //    float moveHorizontal = Input.GetAxisRaw("Horizontal");
    //    float moveVertical = Input.GetAxisRaw("Vertical");
    //    float HR = Input.GetAxis("JoyX");
    //    rb.velocity = new Vector2(moveHorizontal * speed, moveVertical * speed);
    //    transform.Rotate(0, 0, HR * rotationSpeed * Time.deltaTime);
    //    if (rb.velocity.magnitude > 0.2f)
    //    {
    //        fly = !fly;
    //        Debug.Log(fly);
    //    }
    //    anim.SetBool("Fly", fly);
    //}

     void Update()
    {
        //timer++;
        ////if (shootDirection, sqr.Magnitude > 0.01f);
        //if (Input.GetButtonDown("Horizontal2") || Input.GetButtonDown("Fire1") || Input.GetButtonDown("Fire5"))
        //{
        //    Rigidbody2D clone;
        //    clone = Instantiate(bullet, spawnPoint.transform.position, transform.rotation);
        //    clone.GetComponent<Rigidbody2D>().AddForce(transform.up * bulletSpeed * 2);
        //    //timer = 0;
        //}
        float HR = Input.GetAxis("JoyX");
        float moveHorizontal = Input.GetAxisRaw("Horizontal");
        float moveVertical = Input.GetAxisRaw("Vertical");

        if (hive.homing == false)
        {
            Quaternion rot = transform.rotation;
            float z = rot.eulerAngles.z;
            z -= HR * rotationSpeed * Time.deltaTime;
            rot = Quaternion.Euler(0, 0, z);
            transform.rotation = rot;
            Vector3 pos = transform.position;
            Vector3 vel = new Vector3(0, moveVertical * speedV * Time.deltaTime, 0);
            pos += rot * vel;
            transform.position = pos;

            if (rb.velocity.magnitude > 0.2f)
            {
                fly = !fly;
                Debug.Log(fly);
            }
            anim.SetBool("Fly", fly);

            if (Input.GetButton("Fire1"))
            {
                whoosh.Play();
                player.radius = 5.1f;
                spin = true;
            }
            else
            {
                player.radius = 0.5f;
                spin = false;
            }
            anim.SetBool("Spin", spin);

            if (Input.GetButtonDown("Fire5"))
            {
                retro.Play();
                Instantiate(dashParticle, transform.position, Quaternion.identity);
                speedV = 90;
            }
            else
            {
                speedV = 10;
            }
        }

        if (!Hive)
        {
            Debug.Log("Hive Destroyed");
            if (particleHive == false)
            {
                Instantiate(hiveParticles, new Vector2(0, 0), Quaternion.identity);
                particleHive = true;
            }
            HiveDestroyed = true;
        }
    }

    void LateUpdate()
    {
        Vector3 viewPos = transform.position;
        viewPos.x = Mathf.Clamp(viewPos.x, screenBounds.x + objectWidth, screenBounds.x * -1 - objectWidth);
        viewPos.y = Mathf.Clamp(viewPos.y, screenBounds.y + objectHeight, screenBounds.y * -1 - objectHeight);
        transform.position = viewPos;
    }

    void OnTriggerEnter2D(Collider2D other)
    {
        if (other.CompareTag("Collect"))
        {
            blop.Play();
            nectarCollect += 1;
            Destroy(other.gameObject);
        }

        if (other.CompareTag("Flower"))
        {
            blop.Play();
            hive.hit -= 1;
            Destroy(other.gameObject);
        }
    }
}
