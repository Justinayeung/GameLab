using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShowButton4 : MonoBehaviour
{
    public GameObject Exit;

    void Start()
    {
        StartCoroutine("ShowHideButton");
    }

    IEnumerator ShowHideButton()
    {
        Exit.SetActive(false);
        yield return new WaitForSeconds(25);
        Exit.SetActive(true);
        yield return null;
    }

    
}
