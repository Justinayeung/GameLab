using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioPortal : MonoBehaviour
{
    public AudioSource OpenPortal;

    void Opening()
    {
        OpenPortal.Play();
    }
}
