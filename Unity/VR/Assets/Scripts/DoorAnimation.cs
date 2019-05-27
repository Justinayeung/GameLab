using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DoorAnimation : MonoBehaviour
{
    public Animator animL;
    public Animator animR;
    public GameObject openFace;
    public GameObject closedFace;
    public Animator faceClose;
    //public Animator fadeToBlack;
    public AudioSource doorAudio;
    bool noise = true;

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player") && noise)
        {
            StartCoroutine(doorClose());
            noise = false;
        }
 
    }

    IEnumerator doorClose()
    {
        doorAudio.Play();
        animL.SetTrigger("CloseDoorLeft");
        animR.SetTrigger("CloseDoorRight");
        //Fade Out Trigger
        //fadeToBlack.SetTrigger("FadeToBlack");
        closedFace.SetActive(true);
        faceClose.SetTrigger("Face");
        yield return null;
    }
    //void OnTriggerExit(Collider other)
    //{
    //    anim.enabled = true;

    //}

    //void pauseAnimationEvent()
    //{
    //    anim.enabled = false;
    //}
}
