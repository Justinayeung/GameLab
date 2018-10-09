using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickupManager1 : MonoBehaviour
{
    public GameObject[] pickupPrefabs;

    private Transform playerTransform;
    private float spawnZ = 0.0f;
    private float pickupSize = 10;
    private int amnTileOnScreen = 6;

    //Needed so obstacles that spawn aren't the same twice
    private int lastPickupIndex = 0;

    //safeZone is needed or else the obstacle that gets destroyed is right under player
    private float safeZone = 40.0f;
    private List<GameObject> activePickups;

    // Use this for initialization
    void Start()
    {
        //Creating list for obstacles so that system know which to delete
        activePickups = new List<GameObject>();

        //Finding player gameobject
        playerTransform = GameObject.FindWithTag("Player").transform;

        //Calling function SpawnObstacle when int i is < amnTileOnScreen
        for (int i = -5; i < amnTileOnScreen; i++)
        {
            if (i < 2)
            {
                SpawnPickup(0);
            }
            else
            { 
                SpawnPickup();
            }
        }
    }

    // Update is called once per frame
    void Update()
    {
        //Spawning and deleting obstacles based on player position - safeZone
        if (playerTransform.position.z - safeZone > (spawnZ - (amnTileOnScreen * pickupSize)))
        {
            SpawnPickup();
            DeletePath();
        }

    }

    //Creating own function
    private void SpawnPickup(int prefabIndex = -1)
    {
        //Grabbing a reference to prefab
        //Allowing prefab to spawn after prefab
        GameObject go;

        //Spawning normal obstacles
        if (prefabIndex == -1)
            go = Instantiate(pickupPrefabs[RandomPickupIndex()]) as GameObject;
        else
            go = Instantiate(pickupPrefabs[prefabIndex]) as GameObject;

        go.transform.SetParent(transform);
        go.transform.position = Vector3.forward * spawnZ;
        spawnZ += pickupSize;

        //Whenever obstacles are added put it in the list
        activePickups.Add(go);
    }

    private void DeletePath()
    {
        //Delete all objects at the top of the list
        Destroy(activePickups[0]);
        //Remove at the index 0
        activePickups.RemoveAt(0);
    }

    //random obstacles (this needed when you have more then one prefab
    private int RandomPickupIndex()
    {
        if (pickupPrefabs.Length <= 1)
        {
            return 0;
        }

        int randomIndex = lastPickupIndex;
        while (randomIndex == lastPickupIndex)
        {
            randomIndex = Random.Range(0, pickupPrefabs.Length);
        }

        lastPickupIndex = randomIndex;
        return randomIndex;
    }
}