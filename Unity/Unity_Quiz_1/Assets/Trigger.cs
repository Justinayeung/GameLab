using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Trigger : MonoBehaviour
{
    public bool getKey;
    public GameObject key;

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            getKey = true;
        }
        else
        {
            getKey = false;
        }
        key.SetActive(false);
    }
}
