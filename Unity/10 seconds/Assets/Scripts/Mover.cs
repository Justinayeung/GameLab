using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Mover : MonoBehaviour
{
    public GameObject CanvasWon;
    public GameObject CanvasLost;
    public float speed;
    public Transform target;

    public Vector3 normalizeDirection;
    private float timeLeft = 10.0f;
    private bool villageDestroyed;

    void Start()
    {
        villageDestroyed = false;
        CanvasLost.SetActive(false);
        CanvasWon.SetActive(false);
        normalizeDirection = (target.position - transform.position).normalized;
    }

    void Update()
    {
        normalizeDirection = (target.position - transform.position).normalized;
        float dist = Vector3.Distance(target.position, transform.position);

        if (dist > 0.5f)
        {
            transform.position += normalizeDirection * speed * Time.deltaTime;
        }
        else
        {
            speed = 0f;
            villageDestroyed = true;
        }

        timeLeft -= Time.deltaTime;
        if (timeLeft <= 0 && !villageDestroyed)
        {
            speed = 0f;
            CanvasWon.SetActive(true);
        }

        if (villageDestroyed)
        {
            CanvasLost.SetActive(true);
        }
    }
}
