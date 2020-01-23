using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Raycast : MonoBehaviour
{
    public Camera cam;

    private Vector3 screenPos;
    private RaycastHit2D hit;
    private GameObject hitObject = null;

    void Update()
    {
        Vector3 mousePos = Input.mousePosition;
        mousePos.z = 10;

        //Get Object
        if (Input.GetMouseButtonDown(0))
        {
            screenPos = cam.ScreenToWorldPoint(mousePos);
            hit = Physics2D.Raycast(screenPos, Vector2.zero);
            if (hit)
            {
                if (hit.collider.gameObject.tag == "Monster")
                {
                    hitObject = hit.collider.gameObject;
                }
            }
        }

        //Hold Object
        if (hitObject)
        {
            if (Input.GetMouseButton(0))
            {
                screenPos = cam.ScreenToWorldPoint(mousePos);
                hit = Physics2D.Raycast(screenPos, Vector2.zero);
                if (hit)
                {
                    hitObject.transform.position = new Vector2(hit.point.x, hit.point.y);
                }
            }
        }

        //Drop Object
        if (Input.GetMouseButtonUp(0))
        {
            hitObject = null;
        }
    }
}
