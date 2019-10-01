using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enemy4 : MonoBehaviour
{
    public AudioSource blopLow;
    public AudioSource sonicQueen;
    public SpriteRenderer queenWasp;
    public Color flickerColor = Color.white;
    public Color[] hitColor;
    public float speed;
    public float speedY;
    public float speedToHive;
    public float awareDistSwarm;
    public float distToTarget;
    public float distToSwarm;
    public GameObject DeathParticles;
    public GameObject DeathParticlesPlayer;
    public GameObject RespawnParticles;
    public GameObject MainGame;
    public GameObject WinMenu;

    public Transform beeSwarm;
    private Transform target;
    private Transform playerChase;
    private Rigidbody2D rb;

    Animator anim;
    bool fly = true;
    Hive hive;
    public int onHit;
    public bool dead = false;

    public enum States
    {
        Spin,
        Swarm
    };

    public States currentState;

    void Start()
    {
        dead = false;
        MainGame = GameObject.FindGameObjectWithTag("MainGame");
        WinMenu = GameObject.FindGameObjectWithTag("WinMenu");
        blopLow = GameObject.FindGameObjectWithTag("BlopLow").GetComponent<AudioSource>();
        sonicQueen = GameObject.FindGameObjectWithTag("Queen").GetComponent<AudioSource>();
        onHit = 0;
        currentState = States.Spin;
        playerChase = GameObject.FindGameObjectWithTag("Player").GetComponent<Transform>();
        target = GameObject.FindGameObjectWithTag("Hive").GetComponent<Transform>();
        hive = GameObject.FindGameObjectWithTag("Hive").GetComponent<Hive>();
        rb = GetComponent<Rigidbody2D>();
        anim = GetComponent<Animator>();
    }

    void Update()
    {
        anim.SetBool("Fly", fly);
        distToTarget = Vector3.Distance(transform.position, target.position);
        distToSwarm = Vector3.Distance(transform.position, beeSwarm.position);

        if (distToTarget > 0)
        {
            currentState = States.Spin;
        }
        else if (distToSwarm < awareDistSwarm)
        {
            currentState = States.Swarm;
        }

        switch (currentState)
        {
            case States.Spin:
                SpinUpdate();
                break;
            case States.Swarm:
                SwarmUpdate();
                break;
        }

        if (target.position == null)
        {
            speed = 0;
        }

        if (hive.homing == true)
        {
            speed = 0.01f;
        }
        else
        {
            speed = 2f;
        }
        queenWasp.color = hitColor[onHit];
        checkHit();
    }

    void SpinUpdate()
    {
        Vector3 moveDirection = target.position - transform.position;
        float angle = Mathf.Atan2(moveDirection.y, moveDirection.x) * Mathf.Rad2Deg;
        transform.rotation = Quaternion.Euler(new Vector3(0, 0, angle - 90));
        Vector3 rotation = new Vector3(0, 0, 45);
        transform.RotateAround(target.position, rotation * 3, -speed);
        transform.position = Vector2.MoveTowards(transform.position, target.position, speedToHive * Time.deltaTime);
    }

    void SwarmUpdate()
    {
        //transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(playerChase.position, Vector3.up), Time.fixedDeltaTime * turnSpeed);
        Vector3 moveDirection = beeSwarm.position - transform.position;
        float angle = Mathf.Atan2(moveDirection.y, moveDirection.x) * Mathf.Rad2Deg;
        transform.rotation = Quaternion.Euler(new Vector3(0, 0, angle - 90));
        transform.position = Vector2.MoveTowards(transform.position, beeSwarm.position, speed * Time.deltaTime);
    }

    void OnTriggerEnter2D(Collider2D other)
    {
        if (other.CompareTag("Hive"))
        {
            blopLow.Play();
            CameraShake.Shake(0.2f, 0.5f);
            Destroy(other.gameObject);
        }

        if (other.CompareTag("Player"))
        {
            blopLow.Play();
            Instantiate(DeathParticlesPlayer, other.gameObject.transform.position, Quaternion.identity);
            Instantiate(RespawnParticles, new Vector2(0, 0), Quaternion.identity);
            other.gameObject.transform.position = new Vector2(0, 0);
            onHit += 1;
            checkHit();
            StartCoroutine(Flicker());
        }

        if (other.CompareTag("Swarm"))
        {
            blopLow.Play();
            onHit += 2;
            checkHit();
            StartCoroutine(Flicker());
            Destroy(other.gameObject);
        }
    }

    IEnumerator Flicker()
    {
        queenWasp.color = flickerColor;
        yield return new WaitForSeconds(.05f);
        queenWasp.color = hitColor[onHit];
        checkHit();
    }

    void checkHit()
    {
        //bool once = false;
        if (onHit >= 25)
        {
            dead = true;
            Instantiate(DeathParticles, transform.position, Quaternion.identity);
            Vector3 rotation = new Vector3(0, 0, 0);
            speed = 0;
        }
    }
}
