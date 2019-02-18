using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class TriggerTextMotel : MonoBehaviour
{
    public Text Motel;
    public Text underMotel;
    public Text underMotel1;
    public Text underMotel2;
    public Text underMotel3;
    public AudioSource motel;
    public AudioSource threeShots;
    public Light toOasis;
    public TriggerTextClub1 club;
    public bool motelOver;
    bool triggered = false;
    public GameObject oasisParticles;
    public GameObject theSoul;

    void Awake()
    {
        underMotel3.canvasRenderer.SetAlpha(0);
        underMotel2.canvasRenderer.SetAlpha(0);
        underMotel1.canvasRenderer.SetAlpha(0);
        underMotel.canvasRenderer.SetAlpha(0);
        Motel.canvasRenderer.SetAlpha(0);
        toOasis.enabled = false;
        motelOver = false;
        oasisParticles.SetActive(false);
        theSoul.SetActive(false);
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Player") && !triggered)
        {
            if (club.clubOver)
            {
                StartCoroutine("fadeMotel");
                motel.Play();
            }
            triggered = true;
        }
    }

    IEnumerator fadeMotel()
    {
        Motel.CrossFadeAlpha(1, 0.5f, true);   //To Solid
        underMotel.CrossFadeAlpha(1, 0.5f, true);
        underMotel1.CrossFadeAlpha(1, 0.5f, true);
        underMotel2.CrossFadeAlpha(1, 0.5f, true);
        underMotel3.CrossFadeAlpha(1, 0.5f, true);
        yield return new WaitForSeconds(15);
        oasisParticles.SetActive(true);
        theSoul.SetActive(true);
        toOasis.enabled = true;
        yield return new WaitForSeconds(10.4f);
        Motel.CrossFadeAlpha(0, 0.5f, true);   //To Alpha
        underMotel.CrossFadeAlpha(0, 0.5f, true);
        underMotel1.CrossFadeAlpha(0, 0.5f, true);
        underMotel2.CrossFadeAlpha(0, 0.5f, true);
        underMotel3.CrossFadeAlpha(0, 0.5f, true);
        motelOver = true;
        yield return new WaitForSeconds(.1f);
        threeShots.Play();
    }
}
