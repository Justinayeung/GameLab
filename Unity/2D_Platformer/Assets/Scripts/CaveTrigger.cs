using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using UnityEngine;

public class CaveTrigger : MonoBehaviour
{
    public Image black;

    void Awake()
    {
        black.canvasRenderer.SetAlpha(0);
    }

    void OnTriggerEnter2D(Collider2D other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            StartCoroutine(toCave());
        }
    }

    IEnumerator toCave()
    {
        black.CrossFadeAlpha(1, 1f, true);
        yield return new WaitForSeconds(1);
        SceneManager.LoadScene("Cave");
    }
}
