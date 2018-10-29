using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using UnityEngine;

public class playerMovement : MonoBehaviour
{
    public float speed;
    Rigidbody2D rb;
    SpriteRenderer sr;
    public Sprite left, right, up, down;

    void Start()
    {
        rb = GetComponent<Rigidbody2D>();
        sr = GetComponent<SpriteRenderer>();
    }

    void Update()
    {
        if (Input.GetKey(KeyCode.W) || Input.GetKey(KeyCode.UpArrow))
        {
            rb.transform.position +=  Vector3.up * speed * Time.deltaTime;
            sr.sprite = up;
        }
        if (Input.GetKey(KeyCode.S) || Input.GetKey(KeyCode.DownArrow))
        {
            rb.transform.position += Vector3.down * speed * Time.deltaTime;
            sr.sprite = down;

        }
        if (Input.GetKey(KeyCode.A) || Input.GetKey(KeyCode.LeftArrow))
        {
            rb.transform.position += Vector3.left * speed * Time.deltaTime;
            sr.sprite = left ;

        }
        if (Input.GetKey(KeyCode.D) || Input.GetKey(KeyCode.RightArrow))
        {
            rb.transform.position += Vector3.right * speed * Time.deltaTime;
            sr.sprite = right;

        }

    }
}