﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Patrol1 : MonoBehaviour
{
    public float speed;
    public float rayDistance;
    private bool movingRight = true;
    public Transform groundDetection;

    void Update()
    {
        transform.Translate(Vector2.right * speed * Time.deltaTime);
        RaycastHit2D groundInfo = Physics2D.Raycast(groundDetection.position, Vector2.right, rayDistance);
        if (groundInfo.collider == false)   //If ray hasn't collided with anything
        {
            if (movingRight == true)
            {
                transform.eulerAngles = new Vector3(0, -180, 0);
                movingRight = false;
            }
            else
            {
                transform.eulerAngles = new Vector3(0, 0, 0);
                movingRight = true;
            }
        }
    }
}
