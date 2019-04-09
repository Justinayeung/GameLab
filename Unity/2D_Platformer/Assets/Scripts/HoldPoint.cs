using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HoldPoint : MonoBehaviour
{
    public float distance = 2f;
    RaycastHit2D rock;
    public Grabbing grab;
    public GameObject rockGrab;
    public LayerMask notGrabbed;
    public float throwForce;

    void Update()
    {
        Physics2D.queriesStartInColliders = false;
        rock = Physics2D.Raycast(transform.position, Vector2.right * transform.localScale.x, distance);

        if (Input.GetKeyDown(KeyCode.LeftShift))
        {
            if (grab.grabbed)
            {
                //throw
                grab.grabbed = false;
                //if (hit.collider.gameObject.GetComponent<Rigidbody2D>() != null)
                //{
                //    hit.collider.gameObject.GetComponent<Rigidbody2D>().velocity = new Vector2(3, transform.localScale.y) * throwForce;
                //}
                rock.collider.gameObject.transform.parent = rockGrab.transform;
                rock.collider.gameObject.GetComponent<Rigidbody2D>().isKinematic = false;
                rock.collider.gameObject.GetComponent<Rigidbody2D>().AddForce(new Vector2(transform.localScale.x, 1) * throwForce);
            }
        }
    }
}
