using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Shoot : MonoBehaviour
{
    public GameObject shot;
    public Transform shotLoc;
    AudioSource pew;

    void Start()
    {
        pew = GetComponent<AudioSource>();
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            Instantiate(shot, shotLoc.position, shotLoc.rotation);
            pew.Play();
        }
    }
}
