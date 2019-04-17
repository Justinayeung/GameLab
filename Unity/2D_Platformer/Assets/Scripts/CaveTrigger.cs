using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using UnityEngine;

public class CaveTrigger : MonoBehaviour
{
    public Image black;

    public Animator animPixel;

    void Awake()
    {
        black.canvasRenderer.SetAlpha(0);
        animPixel = GetComponent<Animator>();
    }

    void OnTriggerEnter2D(Collider2D other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            animPixel.SetTrigger("pixelFade");
            StartCoroutine(toCave());
        }
    }

    IEnumerator toCave()
    {
        black.CrossFadeAlpha(1, 1f, true);
        yield return new WaitForSeconds(2f);
        SceneManager.LoadSceneAsync("Cave");
        yield return new WaitForSeconds(1);
    }
}
