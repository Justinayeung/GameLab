using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectAttach : MonoBehaviour
{
    public Transform holdpoint;

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Object"))
        {
            other.gameObject.transform.position = holdpoint.position;
        }
    }
}
