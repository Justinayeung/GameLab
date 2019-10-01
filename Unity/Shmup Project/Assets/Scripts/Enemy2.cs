using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enemy2 : MonoBehaviour
{
    public AudioSource blopLow;
    public float speed;
    public float speedY;
    public float turnSpeed;
    public float awareDistToCenter;
    public float awareDistToPlayer;
    public float awareDistSwarm;
    public float distToTarget;
    public float distToCenter;
    public float distToSwarm;
    public GameObject DeathParticles;
    public GameObject DeathParticlesPlayer;
    public GameObject RespawnParticles;

    public Transform beeSwarm;
    private Transform target;
    private Transform playerChase;
    private Rigidbody2D rb;
    private float xSpeed;
    private float xMove = 0f;

    Animator anim;
    bool fly = true;
    Hive hive;
    public Enemy4 queen;

    public enum States
    {
        Idle,
        Chase,
        Move,
        Swarm
    };

    public States currentState;

    void Start()
    {
        blopLow = GameObject.FindGameObjectWithTag("BlopLow").GetComponent<AudioSource>();
        currentState = States.Move;
        playerChase = GameObject.FindGameObjectWithTag("Player").GetComponent<Transform>();
        target = GameObject.FindGameObjectWithTag("Hive").GetComponent<Transform>();
        hive = GameObject.FindGameObjectWithTag("Hive").GetComponent<Hive>();
        rb = GetComponent<Rigidbody2D>();
        anim = GetComponent<Animator>();
        xSpeed = Random.Range(0.01f, 0.1f);
    }

    void Update()
    {
        anim.SetBool("Fly", fly);
        distToTarget = Vector3.Distance(transform.position, playerChase.position);
        distToCenter = Vector3.Distance(transform.position, target.position);
        distToSwarm = Vector3.Distance(transform.position, beeSwarm.position);

        if (distToCenter > awareDistToCenter)
        {
            currentState = States.Move;
        }
        else if (distToCenter < awareDistToCenter)
        {
            currentState = States.Idle;
        }
        else if (distToTarget < awareDistToPlayer)
        {
            currentState = States.Chase;
        }
        else if (distToSwarm < awareDistSwarm)
        {
            currentState = States.Swarm;
        }

        switch (currentState)
        {
            case States.Idle:
                IdleUpdate();
                break;
            case States.Chase:
                ChaseUpdate();
                break;
            case States.Move:
                MoveUpdate();
                break;
            case States.Swarm:
                SwarmUpdate();
                break;
        }

        if (target.position == null || queen.dead)
        {
            speed = 0;
        }

        if (hive.homing == true)
        {
            speed = 0.01f;
            speedY = 0.01f;
        }
        else
        {
            speed = 1f;
            speedY = 0.1f;
        }
    }

    void IdleUpdate()
    {
        //transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(target, Vector3.up), Time.fixedDeltaTime * turnSpeed);
        Vector3 moveDirection = target.position - transform.position;
        float angle = Mathf.Atan2(moveDirection.y, moveDirection.x) * Mathf.Rad2Deg;
        transform.rotation = Quaternion.Euler(new Vector3(0, 0, angle - 90));
        transform.position = Vector2.MoveTowards(transform.position, target.position, speed * Time.deltaTime);
    }

    void ChaseUpdate()
    {
        //transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(playerChase.position, Vector3.up), Time.fixedDeltaTime * turnSpeed);
        Vector3 moveDirection = playerChase.position - transform.position;
        float angle = Mathf.Atan2(moveDirection.y, moveDirection.x) * Mathf.Rad2Deg;
        transform.rotation = Quaternion.Euler(new Vector3(0, 0, angle - 90));
        transform.position = Vector2.MoveTowards(transform.position, playerChase.position, speed * Time.deltaTime);
    }

    void MoveUpdate()
    {
        xMove += xSpeed;
        Vector2 newPosition = transform.position;
        newPosition.x = Mathf.Cos(xMove) * 15.0f;
        newPosition.y -= speedY;
        transform.position = newPosition;
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
            Destroy(gameObject);
        }

        //if (other.CompareTag("Bullet"))
        //{
        //    Instantiate(DeathParticles, transform.position, Quaternion.identity);
        //    Destroy(other.gameObject);
        //    Destroy(gameObject);
        //}

        if (other.CompareTag("Player"))
        {
            blopLow.Play();
            Instantiate(DeathParticles, transform.position, Quaternion.identity);
            Instantiate(DeathParticlesPlayer, other.gameObject.transform.position, Quaternion.identity);
            Instantiate(RespawnParticles, new Vector2(0, 0), Quaternion.identity);
            Destroy(gameObject);
            other.gameObject.transform.position = new Vector2(0, 0);
        }

        if (other.CompareTag("Swarm"))
        {
            blopLow.Play();
            Instantiate(DeathParticles, transform.position, Quaternion.identity);
            Destroy(gameObject);
        }

        if (other.CompareTag("SwarmPlayer"))
        {
            blopLow.Play();
            Instantiate(DeathParticles, transform.position, Quaternion.identity);
            Destroy(gameObject);
            Destroy(other.gameObject);
        }
    }
}
