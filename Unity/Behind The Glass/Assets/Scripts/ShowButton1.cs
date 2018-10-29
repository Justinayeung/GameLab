using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShowButton1 : MonoBehaviour
{
    public GameObject TextBTG;

    void Start()
    {
        StartCoroutine("ShowHideButton");
    }

    IEnumerator ShowHideButton()
    {
        TextBTG.SetActive(false);
        yield return new WaitForSeconds(8);
        TextBTG.SetActive(true);
        yield return new WaitForSeconds(4);
        TextBTG.SetActive(false);
        yield return null;

       
    }

    
}
