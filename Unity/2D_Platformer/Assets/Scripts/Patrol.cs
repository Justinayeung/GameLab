using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Patrol : MonoBehaviour
{
    public float speed;
    public float rayDistance;
    private bool movingRight = true;
    public Transform groundDetection;
    public Animator slugStun;
    bool enter;
    private int dir = 1;
    public LayerMask Light;
    private GameObject flash;

    void Update()
    {
        transform.Translate(Vector2.right * speed * Time.deltaTime);
        RaycastHit2D groundInfo = Physics2D.Raycast(groundDetection.position, Vector2.down, rayDistance);
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
        Debug.Log(enter);

        Collider2D other = Physics2D.OverlapCircle(transform.position + Vector3.right * dir, 1.2f, Light);
        if (other)
        {
            flash = other.gameObject;
        }
        else
        {
            flash = null;
        }

        if (flash)
        {
            enter = true;
            speed = 0;
            slugStun.SetBool("Retract", true);
        }
        else
        {
            enter = false;
            slugStun.SetBool("Retract", false);
            speed = 5;
        }
    }

    //void OnTriggerEnter2D(Collider2D other)
    //{
    //    if (other.gameObject.CompareTag("Light"))
    //    {
    //        enter = true;
    //        slugBox.enabled = false;
    //        slugCap.enabled = true;
    //        speed = 0;
    //        slugStun.SetBool("Retract", true);
    //    }
    //    else
    //    {
    //        enter = false;
    //        slugStun.SetBool("Retract", false);
    //        speed = 5;
    //        slugBox.enabled = true;
    //        slugCap.enabled = false;
    //    }
    //}

    //void OnCollisionEnter2D(Collision2D other)
    //{
    //    if (other.gameObject.CompareTag("Light"))
    //    {
    //        enter = true;
    //        slugBox.enabled = false;
    //        slugCap.enabled = true;
    //        speed = 0;
    //        slugStun.SetBool("Retract", true);
    //    }
    //    else
    //    {
    //        enter = false;
    //        slugStun.SetBool("Retract", false);
    //        speed = 5;
    //        slugBox.enabled = true;
    //        slugCap.enabled = false;
    //    }
    //}
}
