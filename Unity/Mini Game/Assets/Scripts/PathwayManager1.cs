using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PathwayManager1 : MonoBehaviour
{
    public GameObject[] pathwayPrefabs;

    private Transform playerTransform;
    private float spawnZ = 0.0f;
    private float pathLength = 30;
    private int amnTileOnScreen = 4;

    //Needed so paths that spawn aren't the same twice
    private int lastPrefabIndex = 0;

    //safeZone is needed or else the path that gets destroyed is right under player
    private float safeZone = 30.0f;
    private List<GameObject> activePaths;


    // Use this for initialization
    void Start()
    {
        //Creating list for path so that system know which to delete
        activePaths = new List<GameObject>();

        //Finding player gameobject
        playerTransform = GameObject.FindWithTag("Player").transform;

        //Calling function SpawnPath when int i is < amnTileOnScreen
        for (int i = 0; i < amnTileOnScreen; i++)
        {
            if (i < 2)
                SpawnPath(0);
            else
                SpawnPath();
        }

    }

    // Update is called once per frame
    void Update()
    {
        //Spawning and deleting paths based on player position - safeZone
        if (playerTransform.position.z - safeZone > (spawnZ - (amnTileOnScreen * pathLength)))
        {
            SpawnPath();
            DeletePath();
        }
    }

    //Creating own function
    private void SpawnPath(int prefabIndex = -1)
    {
        //Grabbing a reference to prefab
        //Allowing prefab to spawn after prefab
        GameObject go;

        //Spawning normal paths without obstable first
        if (prefabIndex == -1)
            go = Instantiate(pathwayPrefabs[RandomPrefabIndex()]) as GameObject;
        else
            go = Instantiate(pathwayPrefabs[prefabIndex]) as GameObject;

        go.transform.SetParent(transform);
        go.transform.position = Vector3.forward * spawnZ;
        spawnZ += pathLength;

        //Whenevery Path is added put it in the list
        activePaths.Add(go);
    }

    private void DeletePath()
    {
        //Delete all objects at the top of the list
        Destroy(activePaths [0]);
        //Remove at the index 0
        activePaths.RemoveAt(0);
    }

    //random obstacles (this needed when you have more then one prefab
    private int RandomPrefabIndex()
    {
        if (pathwayPrefabs.Length <= 1)
        {
            return 0;
        }

        int randomIndex = lastPrefabIndex;
        while (randomIndex == lastPrefabIndex)
        {
            randomIndex = Random.Range(0, pathwayPrefabs.Length);
        }

        lastPrefabIndex = randomIndex;
        return randomIndex;
    }
}
