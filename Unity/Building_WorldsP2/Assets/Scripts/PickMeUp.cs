using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickMeUp : MonoBehaviour
{
    bool isPickedUp;
    public Transform hold;

    void Start()
    {
        isPickedUp = false;
    }

    void Update()
    {
        if(isPickedUp)
        {
            //transform.position = hold.position;
            transform.SetPositionAndRotation(hold.position, hold.rotation);
            if (Input.GetButtonDown("Jump"))
            {
                GetComponent<Rigidbody>().AddForce(transform.forward * 10, ForceMode.Impulse);
                isPickedUp = false;
            }
        }
    }

    void OnMouseDown()
    {
        isPickedUp = true;
    }

    void OnMouseEnter()
    {
        GetComponent<Renderer>().material.color = Color.yellow;
    }

    void OnMouseExit()
    {
        GetComponent<Renderer>().material.color = Color.white;
    }
}
