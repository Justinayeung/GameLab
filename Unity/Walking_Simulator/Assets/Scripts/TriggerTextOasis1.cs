using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using UnityEngine;

public class TriggerTextOasis1 : MonoBehaviour
{
    public Text Oasis;
    public Text underOasis;
    public Text underOasis1;
    public Text underOasis2;
    public Text underOasis3;
    public AudioSource oasis;
    public TriggerTextMotel motel;
    bool triggered = false;

    void Awake()
    {
        underOasis3.canvasRenderer.SetAlpha(0);
        underOasis2.canvasRenderer.SetAlpha(0);
        underOasis1.canvasRenderer.SetAlpha(0);
        underOasis.canvasRenderer.SetAlpha(0);
        Oasis.canvasRenderer.SetAlpha(0);
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Player") && !triggered)
        {
            if (motel.motelOver)
            {
                StartCoroutine("fadeOasis");
                oasis.Play();
            }
            triggered = true;
        }
    }

    IEnumerator fadeOasis()
    {
        Oasis.CrossFadeAlpha(1, 0.5f, true);   //To Solid
        underOasis.CrossFadeAlpha(1, 0.5f, true);
        underOasis1.CrossFadeAlpha(1, 0.5f, true);
        underOasis2.CrossFadeAlpha(1, 0.5f, true);
        underOasis3.CrossFadeAlpha(1, 0.5f, true);
        yield return new WaitForSeconds(8.5f);
        Oasis.CrossFadeAlpha(0, 0.5f, true);   //To Alpha
        underOasis.CrossFadeAlpha(0, 0.5f, true);
        underOasis1.CrossFadeAlpha(0, 0.5f, true);
        underOasis2.CrossFadeAlpha(0, 0.5f, true);
        underOasis3.CrossFadeAlpha(0, 0.5f, true);
    }
}
