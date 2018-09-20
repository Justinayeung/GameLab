using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovingPhysics : MonoBehaviour
{
    private Rigidbody rb;
    public float speed;
    public float upforce;

	// Use this for initialization
	void Start ()
    {
        rb = GetComponent<Rigidbody>();
	}
	
	// Update is called once per frame
	void Update ()
    {
		
	}

    void FixedUpdate()
    {
        //if (Input.GetKey(KeyCode.A))
        //{
        //    GetComponent<Rigidbody>().AddForce(Vector3.left * speed);
        //}

        //if (Input.GetKey(KeyCode.S))
        //{
        //    GetComponent<Rigidbody>().AddForce(Vector3.back * speed);
        //}

        //if (Input.GetKey(KeyCode.D))
        //{
        //    GetComponent<Rigidbody>().AddForce(Vector3.right * speed);
        //}

        //if (Input.GetKey(KeyCode.W))
        //{
        //    GetComponent<Rigidbody>().AddForce(Vector3.forward * speed);
        //}

        //if (Input.GetKey(KeyCode.Space))
        //{
        //    GetComponent<Rigidbody>().AddForce(Vector3.up * upforce, ForceMode.Impulse);
        //}

        float moveHorizontal = Input.GetAxis("Horizontal");
        float moveVertical = Input.GetAxis("Vertical");

        Vector3 movement = new Vector3(moveHorizontal, 0.0f, moveVertical);

        rb.AddForce(movement * speed);

    }
}
