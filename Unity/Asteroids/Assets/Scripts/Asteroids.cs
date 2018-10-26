using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Asteroids : MonoBehaviour
{
    public GameObject asteroid;
    public Vector3 spawnValues;
    public int asteroidCount;

    float timer = 0;

    public void spawnAsteroid()
    {
        for (int i = 0; i < asteroidCount; i++)
        {
            Vector3 spawnPosition = new Vector3(Random.Range(-spawnValues.x, spawnValues.x), spawnValues.y, spawnValues.z);
            Quaternion spawnRotation = Quaternion.identity;
            Instantiate(asteroid, spawnPosition, spawnRotation);
        }
    }

    void Start()
    {
        spawnAsteroid();
    }


    void Update()
    {
        timer += Time.deltaTime;
        if (timer >= 3)
        {
            spawnAsteroid();
            timer = 0;
        }
    }
}
