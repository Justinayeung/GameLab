using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class collider1 : MonoBehaviour
{
    public AudioSource nightwake;

    void OnTriggerEnter2D(Collider2D other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            nightwake.Play();
        }
    }
}
