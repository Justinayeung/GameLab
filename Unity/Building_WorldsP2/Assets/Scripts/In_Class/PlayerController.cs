using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour {
    public float speed = 10.0f;
    public float rotateSpeed = 5f;
    private float moveFwd;
    private float moveSide;
    
    // Update is called once per frame
    void Update()
    {
        moveFwd = Input.GetAxis("Vertical") * speed * Time.deltaTime;
        moveSide = Input.GetAxis("Horizontal") * speed * Time.deltaTime;
        transform.Translate(0, 0, moveFwd);
        transform.Rotate(0, moveSide * rotateSpeed, 0);

    }
}