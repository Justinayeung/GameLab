using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MoveShip : MonoBehaviour
{
    Rigidbody rb;
    public float moveForce;
    public float turnForce;

    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    void Update()
    {
        //Fire Engine
        if (Input.GetKey(KeyCode.UpArrow))
        {
            //Transform = player's transform (local)
            rb.AddForce(transform.forward * moveForce, ForceMode.Acceleration);
        }

        //Turn Left
        if (Input.GetKey(KeyCode.LeftArrow))
        {
            //Vector3 = global
            rb.AddTorque(Vector3.up * -turnForce, ForceMode.Impulse);
        }

        //Turn Right
        if (Input.GetKey(KeyCode.RightArrow))
        {
            rb.AddTorque(Vector3.up * turnForce, ForceMode.Impulse);
        }

        ScreenWrap();
    }

    void ScreenWrap()
    {
        if (transform.position.x < -37)
        {
            transform.position = new Vector3(36, transform.position.y, transform.position.z);
        }

        if (transform.position.x > 37)
        {
            transform.position = new Vector3(-36, transform.position.y, transform.position.z);
        }

        if (transform.position.z < -17)
        {
            transform.position = new Vector3(transform.position.x, transform.position.y, 16);
        }

        if (transform.position.z > 17)
        {
            transform.position = new Vector3(transform.position.x, transform.position.y, -16);
        }
    }
}
