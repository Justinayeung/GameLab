using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MakeAsteroid : MonoBehaviour
{
    public GameObject Asteroid;

	void Start ()
    {
        for (int i = 0; i < 8; i++)
        {
            Instantiate(Asteroid, new Vector3(10, 0, 0), Quaternion.identity);
        }
	}
}
