using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Movement : MonoBehaviour
{
    //Variables
    //When you make a variable public you will see it in Unity inspector
    public float speed;
    public float moveSpeed;
    public float turnSpeed;

    //First thing that gets called when the game is played
    //void Awake() {}
  

    //Use this for initialization
    //Start of life of the object but awake is called first
    void Start ()
    {
        speed = 5f;
        moveSpeed = 10f; 
        turnSpeed = 100f;
	}

    //If a game is laggy then so will update
    //Update is called once per frame
    void Update()
    {
        //Vector3 = 3D 
        //transform.Translate(new Vector3 (0, 0, 1); -> means add (x, y, z) to object
        //This one goes meters per frame
        //transform.Translate(new Vector3 (0, 0, 1));

        //This one goes meters per second
        //transform.Translate(new Vector3 (0, 0, 1) * Time.deltaTime * moveSpeed);
        //Forward is the same as the line above
        //transform.Translate(Vector3.forward * Time.deltaTime * moveSpeed);
        //transform.Translate(Vector3.up * Time.deltaTime * moveSpeed);

        //Look at unity reference to see what other directions you can go

        //transform.Rotate (Vector3.up, turnSpeed * Time.deltaTime);

        //if (Input.GetKey(KeyCode.W))
        //{
        //transform.Translate(Vector3.forward * Time.deltaTime * moveSpeed);
        //}

        //if (Input.GetKey(KeyCode.A))
        //{
        //transform.Rotate(Vector3.up, turnSpeed * Time.deltaTime);
        //transform.Translate(Vector3.left * Time.deltaTime * moveSpeed);
        //}

        //if (Input.GetKey(KeyCode.S))
        //{
        //transform.Translate(Vector3.back * Time.deltaTime * moveSpeed);
        //}

        //if (Input.GetKey(KeyCode.D))
        //{
        //transform.Rotate(Vector3.up, -turnSpeed * Time.deltaTime);
        //transform.Translate(Vector3.right * Time.deltaTime * moveSpeed);
        //}

        //This sets the position equal to a new value instead of adding a vector3
        //ping pong changes a value between 0 and a number you set, in this example we use 3
        //transform.position = new Vector3(Mathf.PingPong(Time.time*speed, 3), transform.position.y, transform.position.z);

        //Use lerping to move between a start and end position
        Vector3 start = new Vector3(1f, 3f, 5f);
        Vector3 end = new Vector3(8f, -2f, 4f);

        //Vector3 moving = Vector3.Lerp(start, end, how far (this example we use ping pong);
        Vector3 moving = Vector3.Lerp(start, end, Mathf.PingPong(Time.time, 1));
        transform.position = moving;
    }

    //Best for physics
    //FixedUpdate would always be a smooth rate (NOT LAGGY)
    //void FixedUpade() {}
}
