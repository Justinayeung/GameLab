using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaterDown : MonoBehaviour
{
    public DroughtManager manager;

    void Update()
    {
        if (manager.waterDown)
        {
            transform.position = new Vector3(transform.position.z, transform.position.y - 0.1f, transform.position.z);
        }

        if (transform.position.y < -2)
        {
            Destroy(gameObject);
        }
    }
}
