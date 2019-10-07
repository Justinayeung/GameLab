using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Rigidbody2D))]
public class HomingScript1 : MonoBehaviour
{
    public Transform target;
    private Rigidbody2D rb;
    public float speed;
    public float rotateSpeed;

    void Start()
    {
        rb = GetComponent<Rigidbody2D>();
        target = GameObject.FindGameObjectWithTag("Enemy").transform;
    }
     
    void Update()
    {
        target = GameObject.FindGameObjectWithTag("Enemy").transform;
        Vector2 direction = (Vector2)target.position - rb.position;
        direction.Normalize();
        float rotateAmount = Vector3.Cross(direction, transform.up).z;
        rb.angularVelocity = -rotateAmount * rotateSpeed;
        rb.velocity = transform.up * speed;
    }
}
