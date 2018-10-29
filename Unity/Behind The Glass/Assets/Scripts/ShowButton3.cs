using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShowButton3 : MonoBehaviour
{
    public GameObject TextThanks;
    public GameObject Jelly;

    void Start()
    {
        StartCoroutine("ShowHideButton");
    }

    IEnumerator ShowHideButton()
    {
        TextThanks.SetActive(false);
        Jelly.SetActive(false);
        yield return new WaitForSeconds(20);
        TextThanks.SetActive(true);
        Jelly.SetActive(true);
        yield return new WaitForSeconds(4);
        TextThanks.SetActive(false);
        Jelly.SetActive(false);
        yield return null;
    }

    
}
