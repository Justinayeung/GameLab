using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaterManager : MonoBehaviour
{
    public Transform[] spawnPoints;
    public GameObject[] Objects;
    public Light directionalLight;
    public Color orignalDirectionalColor;
    public Color directionalColor;
    public Renderer waterRend;
    public Material waterRising;
    public Material waterRising1;
    public AudioSource waterSoundtrack;
    float fadeIn = 15;
    float timer;
    bool once1;
    bool once2;
    bool once3;
    bool once4;
    bool once5;
    public bool startDecrease;

    void Start()
    {
        once1 = false;
        once2 = false;
        once3 = false;
        once4 = false;
        once5 = false;
        timer = 0;
        waterRend.material = waterRising;
        startDecrease = false;
    }

    void Update()
    {
        timer++;
        if (waterSoundtrack.volume < 1)
        {
            waterSoundtrack.volume = waterSoundtrack.volume + (Time.deltaTime / fadeIn + 1);
        }
        if (waterSoundtrack.volume >= 1)
        {
            waterSoundtrack.volume = 1;
        }

        if (timer > 80)
        {
            if (!once1)
            {
                once1 = true;
                Instantiate(Objects[0], spawnPoints[0].position, spawnPoints[0].rotation);
            }
        }
        if (timer > 100)
        {
            if (!once2)
            {
                once2 = true;
                startDecrease = true;
                Instantiate(Objects[1], spawnPoints[1].position, spawnPoints[1].rotation);
            }
        }
        if (timer > 120)
        {
            if (!once3)
            {
                once3 = true;
                Instantiate(Objects[2], spawnPoints[2].position, spawnPoints[2].rotation);
            }
            float step = 0.5f;
            waterRend.material.Lerp(waterRising, waterRising1, step * Time.smoothDeltaTime);
        }
        if (timer > 140)
        {
            if (!once4)
            {
                once4 = true;
                Instantiate(Objects[3], spawnPoints[3].position, spawnPoints[3].rotation);
            }
        }
        if (timer > 160)
        {
            if (!once5)
            {
                once5 = true;
                Instantiate(Objects[4], spawnPoints[4].position, spawnPoints[4].rotation);
            }
            float step = 2f;
            directionalLight.color = Color.Lerp(orignalDirectionalColor, directionalColor, step * Time.smoothDeltaTime);
        }
        if (timer > 180)
        {
            float step = 5f;
            waterRend.material.Lerp(waterRising, waterRising1, step * Time.smoothDeltaTime);
        }
    }
}
