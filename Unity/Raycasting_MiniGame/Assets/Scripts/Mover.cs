using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class Mover : MonoBehaviour
{
    public float speed;
    public Transform target;

    private Vector3 normalizeDirection;
    private float timeLeft = 15.0f;

    void Start()
    {
        normalizeDirection = (target.position - transform.position).normalized;
    }

    void Update()
    {
        transform.position += normalizeDirection * speed * Time.deltaTime;
        timeLeft -= Time.deltaTime;
        if (timeLeft <= 0)
        {
            speed = 0f;
        }
    }
}
