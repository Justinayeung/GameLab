using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BoltCutterController : MonoBehaviour
{
    public Animator anime;
    public GameObject snapBolt;

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Bolt"))
        {
            anime.SetTrigger("CuttingChain");
            snapBolt.SetActive(false);
        }
    }
}
