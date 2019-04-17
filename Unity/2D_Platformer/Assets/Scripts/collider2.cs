using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class collider2 : MonoBehaviour
{
    public AudioSource nightwake;
    public AudioSource aperture;

    void OnTriggerEnter2D(Collider2D other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            aperture.Play();
            nightwake.Stop();
        }
    }
}
