using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using UnityEngine;

public class End : MonoBehaviour
{
    public Image black;
    
    void OnTriggerEnter2D(Collider2D other)
    {
        if(other.gameObject.CompareTag("Player"))
        {
            StartCoroutine(end());
        }
    }

    IEnumerator end()
    {
        black.CrossFadeAlpha(1, 1f, true);
        yield return new WaitForSeconds(1f);
        SceneManager.LoadScene("CaveExit");
    }
}
