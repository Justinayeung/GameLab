using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class TriggerTextClub : MonoBehaviour
{
    public Text Club;
    public AudioSource club;
    public Light toMotel;
    public bool clubOver;

    void Awake()
    {
        Club.canvasRenderer.SetAlpha(0);
        toMotel.enabled = false;
        clubOver = false;
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            StartCoroutine("fadeClub");
            club.Play();
        }
    }

    IEnumerator fadeClub()
    {
        yield return new WaitForSeconds(1);
        Club.CrossFadeAlpha(1, 0.5f, true);   //To Solid
        yield return new WaitForSeconds(5);
        toMotel.enabled = true;
        yield return new WaitForSeconds(17);
        Club.CrossFadeAlpha(0, 0.5f, true);   //To Alpha
        clubOver = true;
    }
}
