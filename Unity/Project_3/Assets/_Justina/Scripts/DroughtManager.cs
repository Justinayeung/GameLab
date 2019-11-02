using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DroughtManager : MonoBehaviour
{
    public AudioSource droughtSoundtrack;
    float timer;
    float fadeIn = 15;
    public bool startDecrease;
    public bool Group1;
    public bool Group2;
    public bool Group3;
    public bool Group4;
    public bool Group5;
    public bool waterDown;

    void Update()
    {
        timer++;
        if (droughtSoundtrack.volume < 1)
        {
            droughtSoundtrack.volume = droughtSoundtrack.volume + (Time.deltaTime / fadeIn + 1);
        }
        if (droughtSoundtrack.volume >= 1)
        {
            droughtSoundtrack.volume = 1;
        }

        if (timer > 10)
        {
            waterDown = true;
        }
        if (timer > 80)
        {
            Group1 = true;
        }
        if (timer > 100)
        {
            Group2 = true;
        }
        if(timer > 120)
        {
            Group3 = true;
        }
        if (timer > 140)
        {
            Group4 = true;
        }
        if (timer > 160)
        {
            Group5 = true;
        }
    }
}
