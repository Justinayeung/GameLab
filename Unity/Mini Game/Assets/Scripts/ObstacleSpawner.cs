using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObstacleSpawner : MonoBehaviour
{
    public GameObject[] obstaclesPrefabs;
    
    private Transform playerTransform;
    private float spawnZ = 0.0f;
    private float obstacleSize = 6;
    private int amnTileOnScreen = 10;

    //Needed so obstacles that spawn aren't the same twice
    private int lastObstacleIndex = 0;

    //safeZone is needed or else the obstacle that gets destroyed is right under player
    private float safeZone = 20.0f;
    private List<GameObject> activeObstacles;


    // Use this for initialization
    void Start()
    {
        //Creating list for obstacles so that system know which to delete
        activeObstacles = new List<GameObject>();

        //Finding player gameobject
        playerTransform = GameObject.FindWithTag("Player").transform;

        //Calling function SpawnObstacle when int i is < amnTileOnScreen
        for (int i = -2; i < amnTileOnScreen; i++)
        {
            if (i < 2)
                SpawnObstacle(0);
            else
                SpawnObstacle();
        }
    }

    // Update is called once per frame
    void Update()
    {
        //Spawning and deleting obstacles based on player position - safeZone
        if (playerTransform.position.z - safeZone > (spawnZ - amnTileOnScreen * obstacleSize))
        {
            SpawnObstacle();
            DeletePath();
        }

    }

    //Creating own function
    private void SpawnObstacle(int prefabIndex = -1)
    {
        //Grabbing a reference to prefab
        //Allowing prefab to spawn after prefab
        GameObject go;

        //Spawning normal obstacles
        if (prefabIndex == -1)
            go = Instantiate(obstaclesPrefabs[RandomObstacleIndex()]) as GameObject;
        else
            go = Instantiate(obstaclesPrefabs[prefabIndex]) as GameObject;

        go.transform.SetParent(transform);
        go.transform.position = Vector3.forward * spawnZ;
        spawnZ += obstacleSize;

        //Whenever obstacles are added put it in the list
        activeObstacles.Add(go);
    }

    private void DeletePath()
    {
        //Delete all objects at the top of the list
        Destroy(activeObstacles[0]);
        //Remove at the index 0
        activeObstacles.RemoveAt(0);
    }

    //random obstacles (this needed when you have more then one prefab
    private int RandomObstacleIndex()
    {
        if (obstaclesPrefabs.Length <= 1)
        {
            return 0;
        }

        int randomIndex = lastObstacleIndex;
        while (randomIndex == lastObstacleIndex)
        {
            randomIndex = Random.Range(0, obstaclesPrefabs.Length);
        }

        lastObstacleIndex = randomIndex;
        return randomIndex;
    }
}
