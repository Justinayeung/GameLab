using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShootingDirection : MonoBehaviour
{
    public Transform beeHive;
    public float rotationSpeed;

    public GameObject spawnPoint;
    public Rigidbody2D bullet;
    public float bulletSpeed;

    void Start()
    {
        
    }

    void Update()
    {
        float rotate = Input.GetAxis("Horizontal");
        Vector3 rotation = new Vector3(0, 0, rotate);
        transform.RotateAround(beeHive.position, rotation * 5, -rotationSpeed);

        if (Input.GetButtonDown("Jump"))
        {
            Rigidbody2D clone;
            clone = Instantiate(bullet, spawnPoint.transform.position, transform.rotation);
            clone.GetComponent<Rigidbody2D>().AddForce(transform.up * bulletSpeed * 2);
        }
    }
}
