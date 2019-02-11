using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class TriggerTextMotel : MonoBehaviour
{
    public Text Motel;
    public AudioSource motel;
    public Light toOasis;
    public TriggerTextClub club;

    void Awake()
    {
        Motel.canvasRenderer.SetAlpha(0);
        toOasis.enabled = false;
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            if (club.clubOver)
            {
                StartCoroutine("fadeMotel");
                motel.Play();
            }
        }
    }

    IEnumerator fadeMotel()
    {
        yield return new WaitForSeconds(1);
        Motel.CrossFadeAlpha(1, 0.5f, true);   //To Solid
        toOasis.enabled = true;
        yield return new WaitForSeconds(23);
        Motel.CrossFadeAlpha(0, 0.5f, true);   //To Alpha
    }
}
