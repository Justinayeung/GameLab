using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GunShooting : MonoBehaviour
{
    public float bulletSpeed = 10f;
    public Rigidbody bullet;
    public Transform bulletSpawn;
    public AudioSource gun;

    void Update()
    {
        if (Input.GetKeyDown("space"))
        {
            gun.Play();
            Rigidbody clone_Ice;
            clone_Ice = Instantiate(bullet, bulletSpawn.position, transform.rotation);
            clone_Ice.GetComponent<Rigidbody>().AddForce(transform.forward * bulletSpeed, ForceMode.Impulse);
        }
    }
}
