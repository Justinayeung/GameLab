using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChoiceTrigger : MonoBehaviour
{
    public GameObject text1;
    public GameObject text2;
    public AudioSource choice;
    bool once = false;

    void Start()
    {
        text1.SetActive(false);
        text2.SetActive(false);
    }

    void OnTriggerEnter(Collider other)
    {
        if (!once)
        {
            StartCoroutine(Decision());
            once = true;
        }
        text1.SetActive(true);
        text2.SetActive(true);
    }

    IEnumerator Decision()
    {
        choice.Play();
        yield return new WaitForSeconds(0.5f);
        choice.Play();
    }
}
