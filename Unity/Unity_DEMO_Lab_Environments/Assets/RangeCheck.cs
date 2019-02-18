using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RangeCheck : MonoBehaviour
{
    public float distance;
    public LayerMask playerLayer;
    public bool playerInRange;

    void Start()
    {
        
    }

    void Update()
    {
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, distance, playerLayer);
        if (hitColliders.Length > 0)
        {
            playerInRange = true;
        }
        else
        {
            playerInRange = false;
        }
    }
}
