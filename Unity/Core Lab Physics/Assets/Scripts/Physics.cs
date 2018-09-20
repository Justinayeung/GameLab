using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Physics : MonoBehaviour
{
    public float upforce;
    //Renderer m_Renderer;

	// Use this for initialization
	void Start ()
    {
        //m_Renderer = GetComponent<Renderer>();
	}

    void OnCollisionEnter(Collision other)
    {
        //Debug.Log(); is the same as processing println();
        Debug.Log("I touched something!!");
        if (other.gameObject.tag == "Sphere")
        {
            gameObject.GetComponent<Renderer>().material.color = Color.black;
        }
    }

    void OnCollisionStay(Collision other)
    {
        Debug.Log("I'm still touching!!");
        if (other.gameObject.tag == "Sphere")
        {
            GetComponent<Rigidbody>().AddForce(Vector3.up * upforce);
        }
    }

    void OnCollisionExit(Collision other)
    {
        Debug.Log("No longer touching");
        if (other.gameObject.tag == "Sphere")
        {
            gameObject.GetComponent<Renderer>().material.color = Color.red;
        }
    }

    //If my mouse is clicked on the object then do something
    void OnMouseDown()
    {
        //GetComponent<Rigidbody>().AddForce(Vector3.up * upforce);
        //GetComponent<Rigidbody>().AddTorque(Vector3.up * upforce);
    }

    void OnTriggerEnter(Collider other)
    {
        
    }

    void OnTriggerStay(Collider other)
    {
        GetComponent<Rigidbody>().AddForce(Vector3.up * upforce);
        GetComponent<Rigidbody>().AddTorque(Vector3.up * upforce);
    }

    void OnTriggerExit(Collider other)
    {

    }

    //void OnMouseOver()
    //{
    //    m_Renderer.material.color = Color.black;
    //}

    //void OnMouseExit()
    //{
    //    m_Renderer.material.color = Color.blue;
    //}
}
