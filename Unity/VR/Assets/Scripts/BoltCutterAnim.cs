using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BoltCutterAnim : MonoBehaviour
{
    public GameObject chain1;
    public GameObject chain2;
    public GameObject chain3;
    public GameObject chain4;
    public GameObject chain5;
    public GameObject openFace;
    public GameObject boltCutter;
    public AudioSource cuttingMetal;
    public Animator mouthB;
    public Animator mouthT;
    public GameObject openingMouth;
    public GameObject closedFace;
    public GameObject eye;

    void Start()
    {
        openingMouth.SetActive(false);
    }

    void first1()
    {
        chain1.SetActive(false);
        cuttingMetal.Play();
    }

    void second1()
    {
        chain2.SetActive(false);
        chain3.SetActive(false);
        cuttingMetal.Play();
    }

    void third1()
    {
        chain4.SetActive(false);
        cuttingMetal.Play();
    }

    void fourth1()
    {
        StartCoroutine(boltFinished());
    }

    IEnumerator boltFinished()
    {
        openFace.SetActive(false);
        chain5.SetActive(false);
        cuttingMetal.Play();
        yield return new WaitForSeconds(1f);
        eye.SetActive(false);
        yield return new WaitForSeconds(0.3f);
        mouthB.SetTrigger("Opening");
        mouthT.SetTrigger("Opening");
        openingMouth.SetActive(true);
        yield return new WaitForSeconds(0.3f);
        closedFace.SetActive(false);
        yield return new WaitForSeconds(0.3f);
        boltCutter.SetActive(false);
    }
}
