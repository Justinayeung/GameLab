using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class TriggerTextIntro : MonoBehaviour
{
    public Text Intro;
    public Text underIntro;
    public Text underIntro1;
    public Text underIntro2;
    public Text underIntro3;
    public AudioSource intro;
    public Light toTown;
    public Light club;
    bool triggered = false;

    void Awake()
    {
        underIntro3.canvasRenderer.SetAlpha(0);
        underIntro2.canvasRenderer.SetAlpha(0);
        underIntro1.canvasRenderer.SetAlpha(0);
        underIntro.canvasRenderer.SetAlpha(0);
        Intro.canvasRenderer.SetAlpha(0);
        toTown.enabled = false;
        club.enabled = false;
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Player") && !triggered)
        {
            StartCoroutine("fadeIntro");
            intro.Play();
        }
        triggered = true;
    }

    IEnumerator fadeIntro()
    {
        Intro.CrossFadeAlpha(1, 0.5f, true);   //To Solid
        underIntro.CrossFadeAlpha(1, 0.5f, true);
        underIntro1.CrossFadeAlpha(1, 0.5f, true);
        underIntro2.CrossFadeAlpha(1, 0.5f, true);
        underIntro3.CrossFadeAlpha(1, 0.5f, true);
        toTown.enabled = true;
        club.enabled = true;
        yield return new WaitForSeconds(9);
        Intro.CrossFadeAlpha(0, 0.5f, true);   //To Alpha
        underIntro.CrossFadeAlpha(0, 0.5f, true);
        underIntro1.CrossFadeAlpha(0, 0.5f, true);
        underIntro2.CrossFadeAlpha(0, 0.5f, true);
        underIntro3.CrossFadeAlpha(0, 0.5f, true);
    }
}
