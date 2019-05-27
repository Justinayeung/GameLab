using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScissorAnim : MonoBehaviour
{
    public GameObject string1;
    public GameObject string2;
    public GameObject string3;
    public GameObject string4;
    public GameObject string5;
    public GameObject string6;
    public GameObject string7;
    public GameObject string8;
    public GameObject string9;
    public GameObject string10;
    public GameObject scissors;
    public AudioSource cuttingString;
    public GameObject snapEYE;

    void Start()
    {
        snapEYE.SetActive(false);
    }

    void first()
    {
        string1.SetActive(false);
        string2.SetActive(false);
        cuttingString.Play();
    }

    void second()
    {
        string3.SetActive(false);
        string4.SetActive(false);
        cuttingString.Play();
    }

    void third()
    {
        string5.SetActive(false);
        cuttingString.Play();
    }

    void forth()
    {
        string6.SetActive(false);
        string7.SetActive(false);
        string8.SetActive(false);
        cuttingString.Play();
    }

    void fifth()
    {
        StartCoroutine(scissorFin());
    }

    IEnumerator scissorFin()
    {
        string9.SetActive(false);
        string10.SetActive(false);
        cuttingString.Play();
        yield return new WaitForSeconds(1f);
        scissors.SetActive(false);
        snapEYE.SetActive(true);
    }
}
