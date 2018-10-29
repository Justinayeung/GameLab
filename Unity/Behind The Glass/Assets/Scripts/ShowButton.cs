using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class ShowButton : MonoBehaviour
{
    public GameObject Buttons;

    void Start()
    {
        StartCoroutine("ShowHideButton");
    }

    IEnumerator ShowHideButton()
    {
        Buttons.SetActive(false);
        yield return new WaitForSeconds(2);
        Buttons.SetActive(true);
        yield return null;
    }
}
