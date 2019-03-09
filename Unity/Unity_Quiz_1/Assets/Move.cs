using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class Move : MonoBehaviour
{
    private Rigidbody rb;
    public float speed;
    public Trigger trig;
    //public float speed = 10;

    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    //void Update()
    //{
    //    float xPos = Input.GetAxis("Horizontal") * speed;
    //    float zPos = Input.GetAxis("Vertical") * speed;
    //    rb.velocity = new Vector3(xPos, 0, zPos);
    //}

    void FixedUpdate()
    {
        float moveHorizontal = Input.GetAxis("Horizontal");
        float moveVertical = Input.GetAxis("Vertical");

        Vector3 movement = new Vector3(moveHorizontal, 0.0f, moveVertical);
        rb.AddForce(movement * speed);
    }

    void OnCollisionEnter(Collision other)
    {
        if (other.gameObject.CompareTag("Door") && trig.getKey)
        {
            SceneManager.LoadScene("End");
        }
    }
}
