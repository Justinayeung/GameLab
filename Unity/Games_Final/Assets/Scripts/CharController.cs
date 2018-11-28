using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharController : MonoBehaviour
{
    public Animator anim;
    bool PlayerWalk;
    public bool onHit;
    public bool hitWall;

    public float moveSpeed = 10f;
    public float turnSpeed = 200f;
    public float lookSpeed = 10;
    private Vector3 curLoc;
    private Vector3 prevLoc;

    public AudioSource WallHit;

    public Transform respawnPoint;

    void Start()
    {
        anim = GetComponent<Animator>();
        onHit = false;
        PlayerWalk = false;
        hitWall = false;
    }

    void Update()
    {
        Move();
        transform.rotation = Quaternion.Lerp(transform.rotation, Quaternion.LookRotation(transform.position - prevLoc), Time.fixedDeltaTime * lookSpeed);
    }

    void FixedUpdate()
    {
        if (Input.GetKey(KeyCode.LeftShift))
        {
            moveSpeed = 20f;
        }
        else
        {
            moveSpeed = 10f;
        }
    }

    void OnCollisionEnter(Collision other)
    {
        if (other.gameObject.CompareTag("Wall"))
        {
            hitWall = true;
            WallHit.Play();
        }

        if (other.gameObject.CompareTag("Enemy"))
        {
            transform.position = respawnPoint.transform.position;
        }
    }

    void Move()
    {
        prevLoc = curLoc;
        curLoc = transform.position;

        if (!hitWall)
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

    IEnumerator wallIsHit()
    {
        while (hitWall)
        {
            yield return new WaitForSeconds(1);
            hitWall = false;
            yield return null;
        }
    }
}
