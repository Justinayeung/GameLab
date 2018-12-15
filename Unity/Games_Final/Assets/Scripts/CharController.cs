using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class CharController : MonoBehaviour
{
    public Animator anim;
    bool PlayerWalk;
    bool PlayerRun;
    public bool onHit;
    public bool hitWall;
    public bool canMove;
    public bool isDead;

    public float moveSpeed = 10f;
    public float turnSpeed = 200f;
    public float lookSpeed = 10;
    private Vector3 curLoc;
    private Vector3 prevLoc;

    public AudioSource WallHit;
    public AudioSource DeathSound;

    public Transform respawnPoint;
    public Transform respawnPoint2;
    public GameObject PlayerDeath;

    void Start()
    {
        anim = GetComponent<Animator>();
        onHit = false;
        PlayerWalk = false;
        PlayerRun = false;
        hitWall = false;
        canMove = true;
        isDead = false;
    }

    void Update()
    {
        Move();
        Running();
        transform.rotation = Quaternion.Lerp(transform.rotation, Quaternion.LookRotation(transform.position - prevLoc), Time.fixedDeltaTime * lookSpeed);
    }

    void OnCollisionEnter(Collision other)
    {
        if (other.gameObject.CompareTag("Wall"))
        {
            hitWall = true;
            StartCoroutine("wallIsHit");
            WallHit.Play();
            WallHit.pitch = 0.5f;
            PlayerRun = false;
            PlayerWalk = false;
        }

        if (other.gameObject.CompareTag("Wall2"))
        {
            hitWall = true;
            StartCoroutine("wallIsHit2");
            WallHit.Play();
            WallHit.pitch = 0.5f;
            PlayerRun = false;
            PlayerWalk = false;
        }
    }


    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Enemy"))
        {
            isDead = true;

            if (isDead)
            {
                isDead = false;
                Instantiate(PlayerDeath, transform.position, transform.rotation);
            }
            canMove = false;
            PlayerRun = false;
            PlayerWalk = false;
            Invoke("PlayerRespawn", 1.5f);
            DeathSound.Play();
        }

        if (other.gameObject.CompareTag("Enemy2"))
        {
            isDead = true;

            if (isDead)
            {
                isDead = false;
                Instantiate(PlayerDeath, transform.position, transform.rotation);
            }
            canMove = false;
            PlayerRun = false;
            PlayerWalk = false;
            Invoke("PlayerRespawn2", 1.5f);
            DeathSound.Play();
        }
    }

    void Move()
    {
        prevLoc = curLoc;
        curLoc = transform.position;

        if (!hitWall && canMove)
        {
            if (Input.GetKey(KeyCode.W))
            {
                curLoc.z += 1 * Time.fixedDeltaTime * moveSpeed;
                PlayerWalk = true;
            }
            else if (Input.GetKey(KeyCode.A))
            {
                curLoc.x -= 1 * Time.fixedDeltaTime * moveSpeed;
                PlayerWalk = true;
            }
            else if (Input.GetKey(KeyCode.S))
            {
                curLoc.z -= 1 * Time.fixedDeltaTime * moveSpeed;
                PlayerWalk = true;
            }
            else if (Input.GetKey(KeyCode.D))
            {
                curLoc.x += 1 * Time.fixedDeltaTime * moveSpeed;
                PlayerWalk = true;
            }
            else
            {
                PlayerWalk = false;
            }

            transform.position = curLoc;
            anim.SetBool("PlayerWalk", PlayerWalk);
        }

        if (hitWall)
        {
            moveSpeed = 0;
            StartCoroutine("wallIsHit");
        }
    }

    void Running()
    {
        if (Input.GetKey(KeyCode.LeftShift) && canMove)
        {
            PlayerWalk = false;
            moveSpeed = 15f;
            PlayerRun = true;
        }
        else
        {
            moveSpeed = 10f;
            PlayerRun = false;
        }
        anim.SetBool("PlayerRun", PlayerRun);
    }

    IEnumerator wallIsHit()
    {
        while (hitWall)
        {
            yield return new WaitForSeconds(0.3f);
            hitWall = false;
            yield return null;
        }
    }

    IEnumerator wallIsHit2()
    {
        while (hitWall)
        {
            transform.Translate(Vector3.right * Time.deltaTime);
            yield return new WaitForSeconds(0.3f);
            hitWall = false;
            yield return null;
        }
    }

    void PlayerRespawn()
    {
        transform.position = respawnPoint.transform.position;
        canMove = true;
    }

    void PlayerRespawn2()
    {
        transform.position = respawnPoint2.transform.position;
        canMove = true;
    }
}
