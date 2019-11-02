using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GunTrigger : MonoBehaviour
{
    public GameObject gunTrigger;
    public GameObject gunhold;

    void Start()
    {
        gunhold.SetActive(false);
        gunTrigger.SetActive(true);
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            gunhold.SetActive(true);
            gunTrigger.SetActive(false);
        }
    }
}
