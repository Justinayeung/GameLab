using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GetBomb : MonoBehaviour
{
    public GameObject holdingB;
    public GameObject findB;

    void Start()
    {
        findB.SetActive(true);
        holdingB.SetActive(false);
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            findB.SetActive(false);
            holdingB.SetActive(true);
        }
    }
}
