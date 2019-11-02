using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SoundTrigger : MonoBehaviour
{
    public AudioSource explode;
    bool once = true;

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player") && once)
        {
            explode.Play();
            once = false;
        }
    }
}
