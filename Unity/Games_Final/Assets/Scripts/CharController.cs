using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharController : MonoBehaviour
{
    public bool onHit;

    public float moveSpeed = 10f;
    public float turnSpeed = 200f;
    public float lookSpeed = 10;
    private Vector3 curLoc;
    private Vector3 prevLoc;

    public AudioSource WallHit;

    void Start()
    {
        onHit = false;
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
            WallHit.Play();
        }
    }

    void Move()
    {
        prevLoc = curLoc;
        curLoc = transform.position;


        if (Input.GetKey(KeyCode.W))
        {
            curLoc.z += 1 * Time.fixedDeltaTime * moveSpeed;
        }

        if (Input.GetKey(KeyCode.A))
        {
            curLoc.x -= 1 * Time.fixedDeltaTime * moveSpeed;
        }

        if (Input.GetKey(KeyCode.S))
        {
            curLoc.z -= 1 * Time.fixedDeltaTime * moveSpeed;
        }

        if (Input.GetKey(KeyCode.D))
        {
            curLoc.x += 1 * Time.fixedDeltaTime * moveSpeed;
        }

        transform.position = curLoc;
    }
}
