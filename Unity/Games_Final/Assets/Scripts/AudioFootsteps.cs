using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioFootsteps : MonoBehaviour
{
    public AudioSource Footsteps;

    void Walking()
    {
        Footsteps.Play();
    }
}
