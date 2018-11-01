using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PortalMovement : MonoBehaviour
{
    public GameObject cubePortal, spherePortal;

	void Update ()
    {
        if (Input.GetKey(KeyCode.UpArrow))
        {
            transform.Translate(Vector3.forward * 5 * Time.deltaTime);
        }

        if (Input.GetKey(KeyCode.DownArrow))
        {
            transform.Translate(Vector3.forward * -5 * Time.deltaTime);
        }
    }

    void OnTriggerEnter(Collider other)
    {
        Debug.Log(other.gameObject.name);
        if (other.gameObject.name == "Cube_Portal")
        {
            transform.position = spherePortal.transform.position + new Vector3 (-4, 0, 0);
        }

        if (other.gameObject.name == "Sphere_Portal")
        {
            transform.position = cubePortal.transform.position + new Vector3(-4, 0, 0);
        }
    }
}
