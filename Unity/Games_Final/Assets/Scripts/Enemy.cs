using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class Enemy : MonoBehaviour
{
    //Dictates whether the agent waits on each node
    bool patrolWaiting;

    //The total time we wait at each node
    float totalWaitTime = 3f;

    //The probability of switching direction
    float switchProbability = 0.2f;

    //The list of all patrol nodes to visit
    List<Waypoints> patrolPoints;


    //Private variables
    NavMeshAgent naveMeshAgent;
    int currentPatrolindex;
    bool travelling;
    bool waiting;
    bool patrolForward;
    float waitTimer;

	void Start ()
    {
        //Checks if object as a NavMeshAgent
        naveMeshAgent = this.GetComponent<NavMeshAgent>();

        if (patrolPoints != null && patrolPoints.Count > 2)
        {
            currentPatrolindex = 0;
            SetDestination();
        }
	}
	
	void Update ()
    {
        //Check if we're close to the destination
        if (travelling && naveMeshAgent.remainingDistance <= 1.0f)
        {
            travelling = false;

            //If we're going to wait, then wait
            if (patrolWaiting)
            {
                waiting = true;
                waitTimer = 0f;
            }
            else
            {
                ChangePatrolPoint();
                SetDestination();
            }
        }

        //Instead if we're waiting
        if (waiting)
        {
            waitTimer += Time.deltaTime;
            if (waitTimer >= totalWaitTime)
            {
                waiting = false;
                ChangePatrolPoint();
                SetDestination();
            }
        }
	}

    private void SetDestination()
    {
        if (patrolPoints != null)
        {
            Vector3 targetVector = patrolPoints[currentPatrolindex].transform.position;
            naveMeshAgent.SetDestination(targetVector);
            travelling = true;
        }
    }

    //Selects a new patrol point in the available list
    //Small probability of going backwards or forward
    private void ChangePatrolPoint()
    {
        if (UnityEngine.Random.Range(0f, 1f) <= switchProbability)
        {
            patrolForward = !patrolForward;
        }

        if (patrolForward)
        {
            //Reset back to 0 if currentPatrolIndex > # of PatrolPoints
            currentPatrolindex = (currentPatrolindex + 1) % patrolPoints.Count;
        }
        else
        {
            if (--currentPatrolindex < 0)
            {
                currentPatrolindex = patrolPoints.Count - 1;
            }
        }
    }
}
