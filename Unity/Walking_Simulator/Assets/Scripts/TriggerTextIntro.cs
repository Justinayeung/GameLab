using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class TriggerTextIntro : MonoBehaviour
{
    public Text Intro;
    public AudioSource intro;
    public Light toTown;
    public Light club;

    void Awake()
    {
        Intro.canvasRenderer.SetAlpha(0);
        toTown.enabled = false;
        club.enabled = false;
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            StartCoroutine("fadeIntro");
            intro.Play();
        }
    }

    IEnumerator fadeIntro()
    {
        yield return new WaitForSeconds(1);
        Intro.CrossFadeAlpha(1, 0.5f, true);   //To Solid
        toTown.enabled = true;
        club.enabled = true;
        yield return new WaitForSeconds(17);
        Intro.CrossFadeAlpha(0, 0.5f, true);   //To Alpha
    }
}
