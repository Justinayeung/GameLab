using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CoroutinePrinter : MonoBehaviour
{
    void Start()
    {
        StartCoroutine("Wait2Seconds");
    }

    IEnumerator Wait2Seconds()
    {
        Debug.Log("1");
        yield return new WaitForSeconds(2);
        Debug.Log("2");
        yield return new WaitForSeconds(2);
        Debug.Log("3");
    }
}
