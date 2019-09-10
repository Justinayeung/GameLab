using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMove : MonoBehaviour
{
    private Rigidbody rb;
    public float speed;

    void Start(){
        rb = GetComponent<Rigidbody>();
    }

    void FixedUpdate(){
        float moveHorizontal = Input.GetAxis("Horizontal");
        float moveVertical = Input.GetAxis("Vertical");
        rb.velocity = new Vector3(moveHorizontal * speed, 0.0f, moveVertical * speed);
    }
}
