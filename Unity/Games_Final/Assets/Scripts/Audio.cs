using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Audio : MonoBehaviour
{
    public AudioSource Footsteps;
    public AudioSource Spikes;

    void MetalSpikes()
    {
        Spikes.Play();
    }

    void Walking()
    {
        Footsteps.Play();
    }
}
