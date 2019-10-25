using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EntranceSetup : MonoBehaviour
{
    AudioSource entranceSound;
    float brightness;

    public float distancetToThanos;
    public bool soundPlayed = false;
    public Light thanosLight;
    public GameObject thanos;
    public GameObject player;

    void Start()
    {
        entranceSound = GetComponent<AudioSource>();
        soundPlayed = false;
    }

    void Update()
    {
        distancetToThanos = Vector3.Distance(player.transform.position, thanos.transform.position);

        if (soundPlayed)
        {
            thanosLight.intensity = 6;
        }
        else
        {
            brightness = map(distancetToThanos, 15, 5, 1, 6);
            thanosLight.intensity = brightness;
        }

        if (distancetToThanos <= 8 && !soundPlayed)
        {
            entranceSound.Play();
            soundPlayed = true;
        }
    }

    float map(float distance, float than1, float than2, float light1, float light2)
    {
        return light1 + (distance - than1) * (light2 - light1) / (than2 - than1);
    }
}
