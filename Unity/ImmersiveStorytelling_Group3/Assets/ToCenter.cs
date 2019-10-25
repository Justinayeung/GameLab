using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ToCenter : MonoBehaviour
{
    public Transform horrorPoint;
    public Transform happyPoint;
    public Transform calmPoint;

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Horror1") || other.CompareTag("Horror2"))
        {
            other.gameObject.transform.position = horrorPoint.position;
        }

        if(other.CompareTag("Happy1") || other.CompareTag("Happy2"))
        {
            other.gameObject.transform.position = happyPoint.position;
        }

        if (other.CompareTag("Calm1") || other.CompareTag("Calm2"))
        {
            other.gameObject.transform.position = calmPoint.position;
        }
    }
}
