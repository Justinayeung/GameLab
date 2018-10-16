using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public class EnemyAI : MonoBehaviour
{
    public Transform[] patrolPoints;
    public float speed;
    Transform currentPatrolPoint;
    int currentPatrolIndex;

    public Transform target;

    public float awarenessRange;
    public float distanceToTarget;
    public float chaseSpeed;

    void Start()
    {
        currentPatrolIndex = 0;
        currentPatrolPoint = patrolPoints[currentPatrolIndex];
    }

    void Update()
    {
        //Check the distance to the player
        distanceToTarget = Vector3.Distance(transform.position, target.position);

        //Check to see if the enemy is aware of the player - if not then patrol
        if (distanceToTarget > awarenessRange)
        {
            Patrol();
        }

        //If the target is within the enemy's awarenessRange - chase
        if (distanceToTarget < awarenessRange)
        {
            Chase();
        }
    }

    void Patrol()
    {
        transform.Translate(Vector2.right * Time.deltaTime * speed);

        //Check to see if we have reached the patrolpoint
        if (Vector3.Distance(transform.position, currentPatrolPoint.position) < .1f)
        {
            //If this is true we have reached the patrol point -- get next one
            //Check to see if we have anymore points -- if not go back to beginning
            if (currentPatrolIndex + 1 < patrolPoints.Length)
            {
                currentPatrolIndex++;
            }
            else
            {
                currentPatrolIndex = 0;
            }
            currentPatrolPoint = patrolPoints[currentPatrolIndex];
        }

        //Turn to face the current patrol point
        //Finding the direction Vector that points to the patrolpoint
        Vector3 patrolPointDir = currentPatrolPoint.position - transform.position;
        //Figure out the rotation in degrees that we need to turn towards
        float angle = Mathf.Atan2(patrolPointDir.x, patrolPointDir.y) * Mathf.Rad2Deg - 90f;
        //Made the rotation that we need to face
        Quaternion q = Quaternion.AngleAxis(angle, Vector3.forward);
        //Apply the rotation to our tranform
        transform.rotation = Quaternion.RotateTowards(transform.rotation, q, 270f);
    }

    void Chase()
    {
        //Chasing the player

        //Start chasing the target -- turn and move torwards target
        Vector3 targetDir = target.position - transform.position;
        float angle = Mathf.Atan2(targetDir.y, targetDir.x) * Mathf.Rad2Deg - 90f;
        Quaternion q = Quaternion.AngleAxis(angle, Vector3.forward);
        transform.rotation = Quaternion.RotateTowards(transform.rotation, q, 180f);

        transform.Translate(Vector3.up * Time.deltaTime * chaseSpeed);
    }
}
