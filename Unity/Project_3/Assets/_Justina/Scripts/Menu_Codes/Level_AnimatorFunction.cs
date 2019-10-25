using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Level_AnimatorFunction : MonoBehaviour
{
    [SerializeField] Level_MenuButtonController menuButtonController;
    public bool disableOnce;

    void PlaySound(AudioClip whichSound)
    {
        if (!disableOnce)
        {
            menuButtonController.audioSource.PlayOneShot(whichSound);
        }
        else
        {
            disableOnce = false;
        }
    }
}
