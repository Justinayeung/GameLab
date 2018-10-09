using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerControls : MonoBehaviour
{
    public KeyCode moveUp = KeyCode.W;
    public KeyCode moveDown = KeyCode.S;
    public KeyCode moveRight = KeyCode.D;
    public KeyCode moveLeft = KeyCode.A;
    public float speed = 5.0f;
    public float boundY = 2.60f;    //Variable is the highest point that we want our paddle to go

    private Rigidbody2D rb;

    void Start()
    {
        rb = GetComponent<Rigidbody2D>();
    }

    void Update()
    {
        //var = variable, meaning when using var it declares a variable
        //Velocity of the player
        var vel = rb.velocity;
        if (Input.GetKey(moveUp))
        {
            vel.y = speed;
        }
        else if (Input.GetKey(moveDown))
        {
            vel.y = -speed;
        }
        else if (Input.GetKey(moveRight))
        {
            vel.x = speed;
        }
        else if (Input.GetKey(moveLeft))
        {
            vel.x = -speed;
        }
        else
        {
            vel.y = 0;
            vel.x = 0;
        }
        rb.velocity = vel;

        //Position of the player -- movement/transform
        var pos = transform.position;
        if (pos.y > boundY)
        {
            pos.y = boundY;
        }
        else if (pos.y < -boundY)
        {
            pos.y = -boundY;
        }
        transform.position = pos;
    }
}
