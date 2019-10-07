using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CubeDistanceCheck : MonoBehaviour
{
    public GameObject character;
    Renderer rend;
    float distance;
    float minDist;

    void Start()
    {
        //character = GameObject.FindGameObjectWithTag("Player");
        minDist = 5;
        rend = GetComponent<Renderer>();
    }

    void Update()
    {
        distance = Vector3.Distance(transform.position, character.transform.position);
        //Debug.Log(distance);

        if(distance <= minDist)
        {
            //alert!! color change!!
            rend.material.color = Color.red;
        }
        else
        {
            //stay white
            rend.material.color = Color.white;
        }
    }
}
