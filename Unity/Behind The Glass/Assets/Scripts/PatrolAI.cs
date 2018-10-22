using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PatrolAI : MonoBehaviour
{
    public float speed;
    public Transform[] moveSpots;
    public float startWaitTime;
    private int randomSpot;
    private float waitTime;

    public float speedChase;
    public float awareDistance;
    private Transform target;

    public float distance;
    public LineRenderer lineOfSight;
    public Gradient redColor;
    public Gradient greenColor;

    void Start()
    {
        waitTime = startWaitTime;
        randomSpot = Random.Range(0, moveSpots.Length);

        target = GameObject.FindGameObjectWithTag("Player").GetComponent<Transform>();

        Physics2D.queriesStartInColliders = false;
    }

    void Update()
    {
        transform.position = Vector2.MoveTowards(transform.position, moveSpots[randomSpot].position, speed * Time.deltaTime);
        if (Vector2.Distance(transform.position, moveSpots[randomSpot].position) < 0.2f)
        {
            if (waitTime <= 0)
            {
                randomSpot = Random.Range(0, moveSpots.Length);
                waitTime = startWaitTime;
            }
            else
            {
                waitTime -= Time.deltaTime;
            }
        }

        RaycastHit2D hitInfo = Physics2D.Raycast(transform.position, transform.right, distance);

        if (hitInfo.collider != null)
        {

            Debug.DrawLine(transform.position, hitInfo.point, Color.red);
            lineOfSight.SetPosition(1, hitInfo.point);
            lineOfSight.colorGradient = redColor;

            if (hitInfo.collider.CompareTag("Player"))
            {
                transform.position = Vector2.MoveTowards(transform.position, target.position, speed * Time.deltaTime);
            }
        }
        else
        {
            Debug.DrawLine(transform.position, transform.position + transform.right * distance, Color.green);
            lineOfSight.SetPosition(1, transform.position + transform.right * distance);
            lineOfSight.colorGradient = greenColor;
        }
    }
}
