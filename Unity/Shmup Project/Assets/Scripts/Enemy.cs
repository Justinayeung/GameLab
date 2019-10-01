using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enemy : MonoBehaviour
{
    public AudioSource blopLow;
    public float speed;
    public float turnSpeed;
    public float awareDist;
    public float awareDistSwarm;
    public float distToTarget;
    public float distToSwarm;
    public GameObject DeathParticles;
    public GameObject DeathParticlesPlayer;
    public GameObject RespawnParticles;

    public Transform beeSwarm;
    private Transform target;
    private Transform playerChase;
    private Rigidbody2D rb;

    Animator anim;
    bool fly = true;
    Hive hive;
    public Enemy4 queen;

    public enum States
    {
        Idle,
        Chase,
        Swarm
    };

    public States currentState;

    void Start()
    {
        blopLow = GameObject.FindGameObjectWithTag("BlopLow").GetComponent<AudioSource>();
        hive = GameObject.FindGameObjectWithTag("Hive").GetComponent<Hive>();
        currentState = States.Idle;
        playerChase = GameObject.FindGameObjectWithTag("Player").GetComponent<Transform>();
        target = GameObject.FindGameObjectWithTag("Hive").GetComponent<Transform>();
        rb = GetComponent<Rigidbody2D>();
        anim = GetComponent<Animator>();
    }

    void Update()
    {
        anim.SetBool("Fly", fly);
        distToTarget = Vector3.Distance(transform.position, playerChase.position);
        distToSwarm = Vector3.Distance(transform.position, beeSwarm.position);

        if (distToTarget > awareDist)
        {
            currentState = States.Idle;
        }
        else if (distToTarget < awareDist)
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
        }
        else
        {
            speed = 2f;
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
