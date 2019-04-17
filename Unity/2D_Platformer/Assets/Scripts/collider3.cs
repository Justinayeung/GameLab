using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class collider3 : MonoBehaviour
{
    public AudioSource aperture;
    public AudioSource blindsummit;

    void OnTriggerEnter2D(Collider2D other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            blindsummit.Play();
            aperture.Stop();
        }
    }
}
