using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Shooting : MonoBehaviour
{
    public Transform spawnPoint;
    public Rigidbody projectile;

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Z))
        {
            Rigidbody clone;
            clone = (Rigidbody)Instantiate(projectile, spawnPoint.position, projectile.rotation);

            clone.velocity = spawnPoint.TransformDirection(Vector3.forward * 20);
        }
    }
}
