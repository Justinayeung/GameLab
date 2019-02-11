using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class TriggerTextEnd : MonoBehaviour
{
    public Text End;
    public AudioSource end;

    void Awake()
    {
        End.canvasRenderer.SetAlpha(0);
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            StartCoroutine("fadeEnd");
            end.Play();
        }
    }

    IEnumerator fadeEnd()
    {
        yield return new WaitForSeconds(1);
        End.CrossFadeAlpha(1, 0.5f, true);   //To Solid
        yield return new WaitForSeconds(10);
        End.CrossFadeAlpha(0, 0.5f, true);   //To Alpha
    }
}
