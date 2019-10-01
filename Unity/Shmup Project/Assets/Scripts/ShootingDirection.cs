using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShootingDirection : MonoBehaviour
{
    public AudioSource bees;
    public Transform beeHive;
    public float rotationSpeed;

    public GameObject spawnPoint;
    public Rigidbody2D bullet;
    public float bulletSpeed;
    Hive hive;
    public float timer;

    void Start()
    {
        hive = GameObject.FindGameObjectWithTag("Hive").GetComponent<Hive>();
    }

    void Update()
    {
        float rotate = Input.GetAxis("Horizontal");
        Vector3 rotation = new Vector3(0, 0, rotate);
        transform.RotateAround(beeHive.position, rotation * 5, -rotationSpeed);

        if (hive.homing == true)
        {
            timer++;
            if (timer >= 10f)
            {
                if (Input.GetButtonDown("Fire2") || Input.GetButtonDown("Jump"))
                {
                    bees.Play();
                    Rigidbody2D clone;
                    clone = Instantiate(bullet, spawnPoint.transform.position, transform.rotation);
                    clone.GetComponent<Rigidbody2D>().AddForce(transform.up * bulletSpeed * 2);
                    timer = 0;
                }
            }
        }
    }
}
