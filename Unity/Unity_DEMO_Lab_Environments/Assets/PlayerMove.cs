using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMove : MonoBehaviour
{
    private Rigidbody rb;
    private Vector2 rotation = Vector2.zero;    //It is a vector2, because it basically only takes x and y
    public float rotSpeed = 3;
    public int speed = 20;
    public int jumpForce = 500;

    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    void Update()
    {
        rotation.y += Input.GetAxis("Mouse X") * rotSpeed;
        rotation.x += Input.GetAxis("Mouse Y");
        transform.eulerAngles = rotation;

        Vector3 move = Input.GetAxis("Vertical") * transform.forward * speed;
        Vector3 strafe = Input.GetAxis("Horizontal") * transform.forward * speed;
        Vector3 newVelocity = move + strafe;
        newVelocity.y = rb.velocity.y;
        rb.velocity = newVelocity;

        //float horizontal = Input.GetAxis("Horizontal")*speed;
        //float vertical = Input.GetAxis("Vertical") * speed;
        //GetAxisRaw has no smoothing = just integers

        //rb.velocity = new Vector3(horizontal, rb.velocity.y, vertical);
        //GetComponent<Rigidbody>().velocity = new Vector3(0, 1, 0)
        //This is too expensive/costly and so it is better to cache a variable
        //rb.velocity.y = returns the speed of the original cube position

        //You can pareent the main camera to the player and zero it out to make a first person character

        if (Input.GetButtonDown("Jump"))
        {
            rb.AddForce(new Vector3(0, jumpForce, 0));
            //AddForce is basically just adding force so it doesn't change velocity if it is 0
        }
    }
}
