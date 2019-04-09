using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class LevelManager : MonoBehaviour
{
    public Image blackFade;

    void OnTriggerEnter2D(Collider2D other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            StartCoroutine(fade());
        }
    }

    IEnumerator fade()
    {
        blackFade.CrossFadeAlpha(1, 1f, true);
        yield return new WaitForSeconds(1.5f);
        blackFade.CrossFadeAlpha(0, 1f, true);
    }
}
