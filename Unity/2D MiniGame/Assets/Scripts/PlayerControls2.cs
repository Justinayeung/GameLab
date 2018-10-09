using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerControls2 : MonoBehaviour
{
    public KeyCode moveUp = KeyCode.UpArrow;
    public KeyCode moveDown = KeyCode.DownArrow;
    public KeyCode moveRight = KeyCode.RightArrow;
    public KeyCode moveLeft = KeyCode.LeftArrow;
    public float speed = 5.0f;
    public float boundY = 2.60f;

    private Rigidbody2D rb;

    void Start()
    {
        rb = GetComponent<Rigidbody2D>();
    }

    void Update()
    {
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
