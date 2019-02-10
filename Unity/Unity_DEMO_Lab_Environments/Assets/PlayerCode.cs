using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerCode : MonoBehaviour
{
    public AudioSource aud;
    public AudioClip dash;

    void Start()
    {
        aud = GetComponent<AudioSource>();
    }

    
    void Update()
    {
        if (Input.GetButtonDown("Jump"))
        {
            aud.Play();
            aud.PlayOneShot(dash);
        }
    }
}
