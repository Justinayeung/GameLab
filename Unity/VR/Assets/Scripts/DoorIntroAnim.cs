using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DoorIntroAnim : MonoBehaviour
{
    public Animator introDoorL;
    public Animator introDoorR;
    public Animator introFace;
    public AudioSource doorAudio;
    public bool once = true;

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Player") && once)
        {
            StartCoroutine(doorAnim());
        }
    }

    IEnumerator doorAnim()
    {
        once = false;
        introDoorL.SetTrigger("DoorIntro");
        introDoorR.SetTrigger("DoorIntro");
        introFace.SetTrigger("Face");
        doorAudio.Play();
        yield return null;
    }
}
