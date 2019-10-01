using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RandomSpawnFlower : MonoBehaviour
{
    private float axisX;
    private float axisY;
    private Vector2 randPosition;
    private float timeBtwSpawns1;
    Hive hive;

    public Vector2 Min;
    public Vector2 Max;
    public bool spawnFlower = false;
    public GameObject Flower;
    public float startTimeBtwSpawns;

    void Start()
    {
        hive = GameObject.FindGameObjectWithTag("Hive").GetComponent<Hive>();
        timeBtwSpawns1 = startTimeBtwSpawns;
        spawnFlower = false;
    }

    void Update()
    {
        if (hive.hit >= 3)
        {
            spawnFlower = true;
        }
        else
        {
            spawnFlower = false;
        }

        if (timeBtwSpawns1 <= 0)
        {
            if (spawnFlower)
            {
                axisX = UnityEngine.Random.Range(Min.x, Max.x);
                axisY = UnityEngine.Random.Range(Min.y, Max.y);
                randPosition = new Vector2(axisX, axisY);
                Instantiate(Flower, randPosition, Quaternion.identity);
                timeBtwSpawns1 = startTimeBtwSpawns;
            }
        }
        else
        {
            timeBtwSpawns1 -= Time.deltaTime;
        }
    }
}
