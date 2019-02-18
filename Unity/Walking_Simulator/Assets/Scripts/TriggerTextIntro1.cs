using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class TriggerTextIntro1 : MonoBehaviour
{
    public Text Intro;
    public Text underIntro;
    public Text underIntro1;
    public Text underIntro2;
    public Text underIntro3;
    public AudioSource intro;
    public bool introStart;
    public bool introOver;
    bool triggered = false;

    void Awake()
    {
        underIntro3.canvasRenderer.SetAlpha(0);
        underIntro2.canvasRenderer.SetAlpha(0);
        underIntro1.canvasRenderer.SetAlpha(0);
        underIntro.canvasRenderer.SetAlpha(0);
        Intro.canvasRenderer.SetAlpha(0);
        introOver = false;
        introStart = false;
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Player") && !triggered)
        {
            StartCoroutine("fadeIntro");
            intro.Play();
            introStart = true;
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
        yield return new WaitForSeconds(10);
        Intro.CrossFadeAlpha(0, 0.5f, true);   //To Alpha
        underIntro.CrossFadeAlpha(0, 0.5f, true);
        underIntro1.CrossFadeAlpha(0, 0.5f, true);
        underIntro2.CrossFadeAlpha(0, 0.5f, true);
        underIntro3.CrossFadeAlpha(0, 0.5f, true);
        introOver = true;
    }
}
