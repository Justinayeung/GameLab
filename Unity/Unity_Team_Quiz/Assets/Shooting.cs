using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Shooting : MonoBehaviour
{
    public Rigidbody bullet;
    public float bulletSpeed;

    void Update() {
        if (Input.GetButtonDown("Fire1")) {
            Rigidbody clone;
            clone = Instantiate(bullet, transform.position, transform.rotation);
            clone.velocity = transform.TransformDirection(Vector3.forward * bulletSpeed);
        }
    }
}
