using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class playerMove : MonoBehaviour
{
    public float val;
    public float valup;
    private Rigidbody2D rb;

    void Start()
    {
        rb = GetComponent<Rigidbody2D>();
    }

    // Update is called once per frame
    void Update ()
    {
        if (Input.GetKeyDown(KeyCode.UpArrow))
        {
            rb.AddForce(Vector3.up * valup, ForceMode2D.Impulse);
        }

        if (Input.GetKey(KeyCode.LeftArrow))
        {
            rb.AddForce(Vector3.left * val, ForceMode2D.Impulse);
        }

        if (Input.GetKey(KeyCode.RightArrow))
        {
            rb.AddForce(Vector3.right * val, ForceMode2D.Impulse);
        }
    }
}
