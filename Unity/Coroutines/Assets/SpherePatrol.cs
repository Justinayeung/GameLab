using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpherePatrol : MonoBehaviour
{

	// Use this for initialization
	void Start ()
    {
		
	}
	
	// Update is called once per frame
	void Update ()
    {
        transform.position = Vector3.Lerp(new Vector3(-10, 0, 0), new Vector3(10, 0, 0), Mathf.PingPong(Time.time/10, 1));
	}
}
