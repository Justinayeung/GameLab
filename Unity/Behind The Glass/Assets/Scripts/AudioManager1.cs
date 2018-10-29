using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class AudioManager1 : MonoBehaviour
{
    public AudioSource insideAqua;

    public void stopAudio()
    {
        insideAqua.Stop();
    }
}
