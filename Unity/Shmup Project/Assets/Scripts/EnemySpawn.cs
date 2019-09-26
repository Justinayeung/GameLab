using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemySpawn : MonoBehaviour
{
    public Transform[] spawnPoints1;
    public Transform[] spawnPoints2;
    public GameObject[] enemy;
    int randSpawnPoint, randEnemy;
    public static bool spawnAllowed;
    public float startTimeBtwSpawns;
    public float startTimeBtwSpawnsL2;
    public float timer;
    public bool Level2 = false;

    private float timeBtwSpawns1;
    private float timeBtwSpawns2;

    public enum States
    {
        L1,
        L2
    };

    public States currentState;

    void Start()
    {
        timer = 0;
        timeBtwSpawns1 = startTimeBtwSpawns;
        timeBtwSpawns2 = startTimeBtwSpawns;
        currentState = States.L1;
    }

    void Update()
    {
        timer++;

        if (timer < 700)
        {
            currentState = States.L1;
        }
        else if (timer > 700)
        {
            currentState = States.L2;
            Level2 = true;
        }

        switch (currentState)
        {
            case States.L1:
                L1Update();
                break;
            case States.L2:
                L1Update();
                L2Update();
                break;
        }

        void L1Update()
        {
            if (timeBtwSpawns1 <= 0)
            {
                randSpawnPoint = Random.Range(0, spawnPoints1.Length - 1);
                Instantiate(enemy[0], spawnPoints1[randSpawnPoint].position, Quaternion.identity);
                timeBtwSpawns1 = startTimeBtwSpawns;
            }
            else
            {
                timeBtwSpawns1 -= Time.deltaTime;
            }
        }

        void L2Update()
        {
            if (timeBtwSpawns2 <= 0)
            {
                //randSpawnPoint = Random.Range(0, spawnPoints1.Length - 1);
                //Instantiate(enemy[0], spawnPoints1[randSpawnPoint].position, Quaternion.identity);
                //timeBtwSpawns = startTimeBtwSpawns;

                randSpawnPoint = Random.Range(0, spawnPoints2.Length - 1);
                Instantiate(enemy[1], spawnPoints2[randSpawnPoint].position, Quaternion.Euler(0, 0, 180));
                timeBtwSpawns2 = startTimeBtwSpawnsL2;
            }
            else
            {
                timeBtwSpawns2 -= Time.deltaTime;
            }
        }
    }
}
