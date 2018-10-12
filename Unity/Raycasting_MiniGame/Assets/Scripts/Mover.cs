using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Mover : MonoBehaviour
{
    public float speed;
    public Transform target;

    private Vector3 normalizeDirection;

    void Start()
    {
        normalizeDirection = (target.position - transform.position).normalized;
    }

    void Update()
    {
        transform.position += normalizeDirection * speed * Time.deltaTime;
    }
}
