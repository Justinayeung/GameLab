using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ThrowBomb : MonoBehaviour
{
    Rigidbody rb;
    public Transform hold;
    bool holding = true;
    public AudioSource bomb;
    bool once = true;

    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    void Update()
    {
        if (holding)
        {
            transform.position = hold.position;
        }

        if (Input.GetKeyDown("space"))
        {
            holding = false;
            rb.useGravity = true;
            rb.AddForce(Vector3.forward * 10, ForceMode.Impulse);
            if (once)
            {
                bomb.Play();
                once = false;
            }
        }
    }
}
