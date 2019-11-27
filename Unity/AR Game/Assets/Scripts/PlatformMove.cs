using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlatformMove : MonoBehaviour
{
    public Transform movingPlatform;
    public Transform position1;
    public Transform position2;
    public Vector3 newPos;
    public string currentState;
    public float smooth;
    public float rectTime;

     void Start()
    {
        ChangeTarget();
    }

     void FixedUpdate()
    {
        movingPlatform.position = Vector3.Lerp(movingPlatform.position, newPos, smooth * Time.deltaTime);
    }

    void ChangeTarget()
    {
        if (currentState == "Moving to Position 1")
        {
            currentState = "Moving to Position 2";
            newPos = position2.position;
        }
        else if(currentState == "Moving to Position 2")
        {
            currentState = "Moving to POsition 2";
            newPos = position1.position;
        }
        else if(currentState == "")
        {
            currentState ="Moving to Position 2";
            newPos = position2.position;
        }
        Invoke("ChangeTarget", rectTime);
    }
}
