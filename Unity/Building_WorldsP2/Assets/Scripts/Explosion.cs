using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Explosion : MonoBehaviour
{
    public AudioSource E1;
    public AudioSource E2;
    public AudioSource E3;

    void Start()
    {
        StartCoroutine(Exploding());
    }

    IEnumerator Exploding()
    {
        E1.Play();
        yield return new WaitForSeconds(1f);
        E2.Play();
        yield return new WaitForSeconds(1.5f);
        E3.Play();
    }
}
