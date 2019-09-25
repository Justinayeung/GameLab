using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Rigidbody2D))]
public class HomingScript : MonoBehaviour
{
    public Transform target;
    private Rigidbody2D rb;
    public float speed;
    public float rotateSpeed;
    public LayerMask enemyLayer;
    private Collider2D closeEnemy;

    void Start()
    {
        rb = GetComponent<Rigidbody2D>();
        InvokeRepeating("Seek", 0, 0.2f);
        //target = GameObject.FindGameObjectWithTag("Wasp").transform;
    }
     
    void Seek()
    {
        closeEnemy = Physics2D.OverlapCircle(transform.position, 8, enemyLayer);
        if (closeEnemy)
        {
            Vector2 direction = (Vector2)closeEnemy.transform.position - rb.position;
            direction.Normalize();
            float rotateAmount = Vector3.Cross(direction, transform.up).z;
            rb.angularVelocity = -rotateAmount * rotateSpeed;
            rb.velocity = transform.up * speed;
        }
    }
}
