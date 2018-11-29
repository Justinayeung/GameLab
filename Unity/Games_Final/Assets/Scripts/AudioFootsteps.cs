using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioFootsteps : MonoBehaviour
{
    public AudioSource Footsteps;

    void Walking()
    {
        Footsteps.Play();
        Footsteps.volume = Random.Range(0.3f, 0.5f);
    }
}
