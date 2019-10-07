using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RandomSpawnArea : MonoBehaviour
{
    //private float axisX;
    //private float axisY;
    //private Vector2 randPosition;
    private float timeBtwSpawns1;
    public Transform[] spawnPoints1;
    Hive hive;
    int randSpawnPoint, randEnemy;
    //public Vector2 Min;
    //public Vector2 Max;
    public bool canInstantiate = false;
    public GameObject Nectar;
    public float startTimeBtwSpawns;
    public EnemySpawn spawnNectar;
    int prevSpawnIndex = -1;
    
    void Start()
    {
        hive = GameObject.FindGameObjectWithTag("Hive").GetComponent<Hive>();
        timeBtwSpawns1 = startTimeBtwSpawns;
        canInstantiate = false;
    }

    void Update()
    {   
        if (timeBtwSpawns1 <= 0)
        {
            if (canInstantiate)
            {
                do
                {
                    randSpawnPoint = Random.Range(0, spawnPoints1.Length - 1);
                }
                while (prevSpawnIndex == randSpawnPoint && spawnPoints1.Length > 1);
                prevSpawnIndex = randSpawnPoint;

                Instantiate(Nectar, spawnPoints1[randSpawnPoint].position, Quaternion.identity);
                timeBtwSpawns1 = startTimeBtwSpawns;
            }
        }
        else
        {
            timeBtwSpawns1 -= Time.deltaTime;
        }

        if(spawnNectar.Level3 == true)
        {
            startTimeBtwSpawns = 3f;
        }
    }
}
