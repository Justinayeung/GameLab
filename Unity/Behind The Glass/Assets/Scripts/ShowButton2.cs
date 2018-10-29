using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShowButton2 : MonoBehaviour
{
    public GameObject TextCreated;

    void Start()
    {
        StartCoroutine("ShowHideButton");
    }

    IEnumerator ShowHideButton()
    {
        TextCreated.SetActive(false);
        yield return new WaitForSeconds(13);
        TextCreated.SetActive(true);
        yield return new WaitForSeconds(4);
        TextCreated.SetActive(false);
        yield return null;

       
    }

    
}
