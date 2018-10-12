using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RaycasterMover : MonoBehaviour
{
    public Camera cam;

    private Ray ray;
    private RaycastHit hit;
    private GameObject hitObject = null;

    void Update()
    {
        //Get Object
        if (Input.GetMouseButtonDown(0))
        {
            ray = cam.ScreenPointToRay(Input.mousePosition);

            if (Physics.Raycast(ray, out hit))
            {
                if (hit.collider.gameObject.tag == "Fish")
                {
                    hitObject = hit.collider.gameObject;
                }
            }
        }

        if (hitObject)
        {
            //Hold Object
            if (Input.GetMouseButton(0))
            {
                ray = cam.ScreenPointToRay(Input.mousePosition);

                if (Physics.Raycast(ray, out hit))
                {
                    hitObject.transform.position = new Vector3(hit.point.x, hitObject.transform.position.y, hit.point.z);
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
