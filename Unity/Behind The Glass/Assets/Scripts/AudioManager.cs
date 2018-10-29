using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class AudioManager : MonoBehaviour
{
    public AudioSource ring;

    public void stopAudio()
    {
        ring.Stop();
    }
}
