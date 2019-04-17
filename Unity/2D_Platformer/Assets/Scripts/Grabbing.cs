using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Grabbing : MonoBehaviour
{
    //public bool grabbed;
    //public bool grabbing;
    //RaycastHit2D hit;
    //public float distance = 2f;
    //public Transform holdpoint;
    //public float throwForce;
    //public LayerMask notGrabbed;
    //public GameObject Player;
    //GameObject rockGrab;

    private bool holdingBox = false;
    private GameObject canGrab;
    public Transform holdPoint;
    private int dir = 1;
    public LayerMask boxLayer;

    public Animator clunk;

    void Start()
    {
        //grabbing = true;
        //rockGrab = GameObject.FindGameObjectWithTag("canGrab");
    }

    void Update()
    {
        //Physics2D.queriesStartInColliders = false;
        //hit = Physics2D.Raycast(transform.position, Vector2.right * transform.localScale.x, distance);

        //if (Input.GetKeyDown(KeyCode.LeftShift))
        //{
        //    if (!grabbed)
        //    {
        //        //grab
        //        if (hit.collider.CompareTag("canGrab"))
        //        {
        //            grabbed = true;
        //        }
        //    }
        //    else if (!Physics2D.OverlapPoint(holdpoint.position, notGrabbed))
        //    {
        //        //throw
        //        grabbed = false;
        //        if (hit.collider.gameObject.GetComponent<Rigidbody2D>() != null)
        //        {
        //            clunk.SetBool("Throw", true);
        //            hit.collider.gameObject.GetComponent<Rigidbody2D>().isKinematic = false;
        //            hit.collider.gameObject.GetComponent<Rigidbody2D>().velocity = new Vector2(transform.localScale.x, 1) * throwForce;
        //        }
        //    }
        //}
        
        //if (grabbed)
        //{
        //    //Make a holdpoint
        //    hit.collider.gameObject.transform.position = holdpoint.position;
        //    hit.collider.gameObject.GetComponent<Rigidbody2D>().isKinematic = true;
        //}

        if (!holdingBox)
        {
            Collider2D other = Physics2D.OverlapCircle(transform.position + Vector3.right * dir, 1f, boxLayer);
            if (other)
            {
                canGrab = other.gameObject;
            }
            else
            {
                canGrab = null;
            }
        }
        else
        {
            canGrab.transform.position = holdPoint.position;
        }

        if (Input.GetKeyDown(KeyCode.LeftShift) && canGrab)
        {
            if (!holdingBox)
            {
                print("grab");
                holdingBox = true;
            }
            else
            {
                Rigidbody2D BoxRB = canGrab.GetComponent<Rigidbody2D>();
                canGrab.GetComponent<Rigidbody2D>().isKinematic = false;
                BoxRB.velocity = Vector2.zero;
                BoxRB.AddForce((transform.right * dir + Vector3.up) * 300);
                holdingBox = false;
                canGrab = null;
            }
        }


    }

    void throwFalse()
    {
        clunk.SetBool("Throw", false);
    }

    //void OnDrawGizmos()
    //{
    //    Gizmos.color = Color.green;
    //    Gizmos.DrawLine(transform.position, transform.position + Vector3.right * transform.localScale.x * distance);
    //}
}
