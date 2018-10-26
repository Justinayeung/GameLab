using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PatrolAI : MonoBehaviour
{
    SpriteRenderer sr;
    public Sprite left;
    public Sprite right;

    public float speed;
    public Transform[] moveSpots;
    public float startWaitTime;
    private int randomSpot;
    private float waitTime;

    public float speedChase;
    public float awareDistance;
    public float distanceToTarget;
    private Transform target;

    public float distance;
    public LineRenderer lineOfSight;
    public Gradient blueColor;
    public Gradient redColor;

    void Start()
    {
        sr = GetComponent<SpriteRenderer>();

        waitTime = startWaitTime;
        randomSpot = Random.Range(0, moveSpots.Length);

        target = GameObject.FindGameObjectWithTag("Player").GetComponent<Transform>();

        Physics2D.queriesStartInColliders = false;
    }

    void Update()
    {
        distanceToTarget = Vector3.Distance(transform.position, target.position);

        if (distanceToTarget > awareDistance)
        {
            transform.position = Vector2.MoveTowards(transform.position, moveSpots[randomSpot].position, speed * Time.deltaTime);
            if (Vector2.Distance(transform.position, moveSpots[0].position) < 0.2f)
            {
                sr.sprite = left;
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
            if (Vector2.Distance(transform.position, moveSpots[1].position) < 0.2f)
            {
                sr.sprite = right;
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
        }

        if (distanceToTarget < awareDistance)
        {
            if (Vector2.Distance(transform.position, target.position) < awareDistance)
            {
                transform.position = Vector2.MoveTowards(transform.position, target.position, speed * Time.deltaTime);
            }
        }
    }
}
