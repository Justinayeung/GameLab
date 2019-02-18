using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class TriggerTextClub1 : MonoBehaviour
{
    public Text Club;
    public Text underClub;
    public Text underClub1;
    public Text underClub2;
    public Text underClub3;
    public AudioSource club;
    public bool clubOver;
    public TriggerTextIntro1 intro;
    bool triggered = false;

    void Awake()
    {
        underClub3.canvasRenderer.SetAlpha(0);
        underClub2.canvasRenderer.SetAlpha(0);
        underClub1.canvasRenderer.SetAlpha(0);
        underClub.canvasRenderer.SetAlpha(0);
        Club.canvasRenderer.SetAlpha(0);
        clubOver = false;
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Player") && !triggered)
        {
            if (intro.introOver)
            {
                StartCoroutine("fadeClub");
                club.Play();
            }
            triggered = true;
        }
    }

    IEnumerator fadeClub()
    {
        Club.CrossFadeAlpha(1, 0.5f, true);   //To Solid
        underClub.CrossFadeAlpha(1, 0.5f, true);
        underClub1.CrossFadeAlpha(1, 0.5f, true);
        underClub2.CrossFadeAlpha(1, 0.5f, true);
        underClub3.CrossFadeAlpha(1, 0.5f, true);
        yield return new WaitForSeconds(10);
        Club.CrossFadeAlpha(0, 0.5f, true);   //To Alpha
        underClub.CrossFadeAlpha(0, 0.5f, true);
        underClub1.CrossFadeAlpha(0, 0.5f, true);
        underClub2.CrossFadeAlpha(0, 0.5f, true);
        underClub3.CrossFadeAlpha(0, 0.5f, true);
        clubOver = true;
    }
}
