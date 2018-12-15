using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ToPortal : MonoBehaviour
{
    public Transform Portalfront;

    void OnCollisionEnter(Collision other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            other.transform.position = Portalfront.transform.position;
        }
    }
}
