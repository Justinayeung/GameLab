using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Grabbing : MonoBehaviour
{
    public bool grabbed;
    RaycastHit2D hit;
    public float distance = 2f;
    public Transform holdpoint;
    public float throwForce;
    public LayerMask notGrabbed;
    public GameObject Player;
    public GameObject rockGrab;

    void Update()
    {
        Physics2D.queriesStartInColliders = false;
        hit = Physics2D.Raycast(transform.position, Vector2.right * transform.localScale.x, distance);

        if (Input.GetKeyDown(KeyCode.LeftShift))
        {
            if (!grabbed)
            {
                //grab
                if (hit.collider.CompareTag("canGrab"))
                {
                    grabbed = true;
                }
            }

            else if (!Physics2D.OverlapPoint(holdpoint.position, notGrabbed))
            {
                //throw
                grabbed = false;
                if (hit.collider.gameObject.GetComponent<Rigidbody2D>() != null)
                {
                    hit.collider.gameObject.GetComponent<Rigidbody2D>().isKinematic = false;
                    hit.collider.gameObject.GetComponent<Rigidbody2D>().velocity = new Vector2(transform.localScale.x, 1) * throwForce;
                }
            }
        }

        if (grabbed)
        {
            //Make a holdpoint
            hit.collider.gameObject.transform.position = holdpoint.position;
            hit.collider.gameObject.GetComponent<Rigidbody2D>().isKinematic = true;
        }
    }

    void OnDrawGizmos()
    {
        Gizmos.color = Color.green;
        Gizmos.DrawLine(transform.position, transform.position + Vector3.right * transform.localScale.x * distance);
    }
}
