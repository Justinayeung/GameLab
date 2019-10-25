using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RandomSpawn : MonoBehaviour
{
    private float timeBtwSpawns1;
    public Transform[] spawnPoints1;
    int randSpawnPoint, randEnemy;
    public bool canInstantiate = false;
    public GameObject[] Objects;
    public float startTimeBtwSpawns;
    int prevSpawnIndex = -1;

    void Start()
    {
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

                GameObject randOb = Objects[Random.Range(0, Objects.Length)];
                Instantiate(randOb, spawnPoints1[randSpawnPoint].position, transform.rotation);
                randOb.GetComponent<Rigidbody>().AddForce(new Vector3(Random.Range(-1, 1), 0, Random.Range(-1, 1)));
                timeBtwSpawns1 = startTimeBtwSpawns;
            }
        }
        else
        {
            timeBtwSpawns1 -= Time.deltaTime;
        }
    }
}
