using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Grabbing : MonoBehaviour
{
    public bool grabbed;
    RaycastHit2D hit;
    RaycastHit2D rock;
    public float distance = 2f;
    public Transform holdpoint;
    public float throwForce;
    public LayerMask notGrabbed;

    void Update()
    {
        Physics2D.queriesStartInColliders = false;
        hit = Physics2D.Raycast(transform.position, Vector2.right * transform.localScale.x, distance);
        rock = Physics2D.Raycast(transform.position, Vector2.up * transform.localScale.x, distance);

        if (Input.GetKeyDown(KeyCode.RightShift))
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
                //if (hit.collider.gameObject.GetComponent<Rigidbody2D>() != null)
                //{
                //    hit.collider.gameObject.GetComponent<Rigidbody2D>().velocity = new Vector2(3, transform.localScale.y) * throwForce;
                //}
                if (rock.collider.gameObject.GetComponent<Rigidbody2D>() != null)
                {
                    rock.collider.gameObject.GetComponent<Rigidbody2D>().velocity = new Vector2(transform.localScale.x, transform.localScale.y) * throwForce;
                }
            }
        }

        if (grabbed)
        {
            //Make a holdpoint
            hit.collider.gameObject.transform.position = holdpoint.position;
        }
    }

    void OnDrawGizmos()
    {
        Gizmos.color = Color.green;
        Gizmos.DrawLine(transform.position, transform.position + Vector3.right * transform.localScale.x * distance);
        Gizmos.DrawLine(transform.position, transform.position + Vector3.up * transform.localScale.x * distance);
    }
}
