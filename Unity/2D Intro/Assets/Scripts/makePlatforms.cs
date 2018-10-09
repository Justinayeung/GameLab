using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class makePlatforms : MonoBehaviour
{
    public GameObject Platform;
    //GameObject clone;
    float timer = 0;

    GameObject[] Platforms;
	
	// Update is called once per frame
	void Update ()
    {
        //Creation of our prefab after a certain time
        timer += Time.deltaTime;
        if (timer >= 1.5)
        {
            GameObject clone = Instantiate(Platform, (new Vector2(Random.Range(-8f, 8f), 6f)), Quaternion.identity);
            clone.transform.localScale = new Vector2(Random.Range(2f, 8f), 1f);
            timer = 0;
        }

        Platforms = GameObject.FindGameObjectsWithTag("Platform");
        foreach (GameObject Platform in Platforms)
        {
            // Moves the clone down
            Platform.transform.localPosition = new Vector2(Platform.transform.localPosition.x, Platform.transform.localPosition.y - 0.1f);

            //Destroy platforms if they go below -6
            if (Platform.transform.localPosition.y < -6)
            {
                Destroy(Platform);
            }
        }
	}
}
