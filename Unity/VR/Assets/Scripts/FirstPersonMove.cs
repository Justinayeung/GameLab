using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FirstPersonMove : MonoBehaviour
{
    public float rotSpeed = 3;
    private Vector2 rotation = Vector2.zero;
    private Rigidbody rb;
    public int speed = 20;
    public int jumpForce = 800;
    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {
        //Rotation is a Vector2 force.
        rotation.y += Input.GetAxis("Mouse X") * rotSpeed;
        rotation.x += Input.GetAxis("Mouse Y");
        transform.eulerAngles = rotation;

        Vector3 move = Input.GetAxis("Vertical") * transform.forward * speed;
        Vector3 strafe = Input.GetAxis("Horizontal") * transform.right * speed;
        Vector3 newVelocity = move + strafe;
        newVelocity.y = rb.velocity.y;
        rb.velocity = newVelocity;


        //GetAxisRaw creates less smooth movement that is more rigid, like older games.
        //GetAxis creates more smooth movement.
        //float xSpeed = Input.GetAxis("Horizontal") * speed;
        //float zSpeed = Input.GetAxis("Vertical") * speed;
        //rb.velocity = new Vector3(xSpeed, rb.velocity.y, zSpeed);

        if (Input.GetButtonDown("Jump"))
        {
            rb.AddForce(new Vector3(0, jumpForce, 0));
        }
    }

}
