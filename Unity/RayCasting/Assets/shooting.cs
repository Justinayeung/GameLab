using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class shooting : MonoBehaviour
{
    public Transform gunEnd;

    private Camera fpsCam;
    private LineRenderer laserLine;

    void Start()
    {
        fpsCam = GetComponentInChildren<Camera>();
        laserLine = gunEnd.GetComponent<LineRenderer>();
    }

    void Update()
    {
        //Fire1 = Left Mouse Button
        if (Input.GetButton("Fire1"))
        {
            //Half way over and half way up = middle of camera = rayOrigin
            Vector3 rayOrigin = fpsCam.ViewportToWorldPoint(new Vector3(0.5f, 0.5f, 0f));
            RaycastHit hit;

            laserLine.enabled = true;
            laserLine.SetPosition(0, gunEnd.position);

            //Debug.DrawRay(rayOrigin, fpsCam.transform.forward);

            if (Physics.Raycast(rayOrigin, fpsCam.transform.forward, out hit))
            {
                Debug.Log(hit.collider.tag);
                laserLine.SetPosition(1, hit.point);    //point = the point the in world space where the ray hits the collider

                if (hit.collider.tag == "Cube")
                {
                    hit.collider.GetComponent<MeshRenderer>().material.color = Color.red;
                }
            }
            else
            {
                laserLine.SetPosition(1, fpsCam.transform.forward * 100f);
            }
        }
        else
        {
            laserLine.enabled = false;
        }
    }
}
