using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SoundScript : MonoBehaviour
{
    AudioSource allSounds;
    public GameObject CanvasWon;
    public GameObject CanvasLose;
    public GameObject lightWin;
    public AudioClip winSound;
    public AudioClip loseSound;
    public AudioClip destroy;
    bool sound;
    bool glow;

    void Start()
    {
        sound = false;
        glow = false;
        allSounds = GetComponent<AudioSource>();
    }

    void Update()
    {
        if (CanvasWon.activeInHierarchy)
        {
            if (!sound)
            {
                allSounds.PlayOneShot(winSound, 0.8f);
                sound = true;
            }
        }
        else if (CanvasLose.activeInHierarchy)
        {
            if (!sound)
            {
                allSounds.PlayOneShot(loseSound, 0.8f);
                sound = true;
            }
        }

        if (lightWin.activeInHierarchy)
        {
            if (!glow)
            {
                allSounds.PlayOneShot(destroy, 0.5f);
                glow = true;
            }
        }
    }
}
