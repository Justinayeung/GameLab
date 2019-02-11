using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using UnityEngine;

public class TriggerTextOasis : MonoBehaviour
{
    public Text Oasis;
    public Text End;
    public AudioSource oasis;
    public AudioSource end;
    public Image black;

    void Awake()
    {
        Oasis.canvasRenderer.SetAlpha(0);
        End.canvasRenderer.SetAlpha(0);
        black.canvasRenderer.SetAlpha(0);
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            StartCoroutine("fadeOasis");
            oasis.Play();
        }
    }

    IEnumerator fadeOasis()
    {
        yield return new WaitForSeconds(1);
        Oasis.CrossFadeAlpha(1, 0.5f, true);   //To Solid
        yield return new WaitForSeconds(20);
        Oasis.CrossFadeAlpha(0, 0.5f, true);   //To Alpha
        StartCoroutine("fadeBlack");
    }

    IEnumerator fadeBlack()
    {
        yield return new WaitForSeconds(1);
        End.CrossFadeAlpha(1, 2f, true);
        yield return new WaitForSeconds(1);
        black.CrossFadeAlpha(1, 0.5f, true);
        end.Play();
        yield return new WaitForSeconds(18);
        End.CrossFadeAlpha(0, 0.5f, true);
        yield return new WaitForSeconds(1);
        SceneManager.LoadScene("ExitGame");
    }
}
