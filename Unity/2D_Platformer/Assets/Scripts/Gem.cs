using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Gem : MonoBehaviour
{
    public Animator gem;
    public GameObject gemGlow;

    void OnTriggerEnter2D(Collider2D other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            StartCoroutine(gemm());
        }
    }

    IEnumerator gemm()
    {
        gem.SetTrigger("start");
        yield return new WaitForSeconds(4.3f);
        gemGlow.SetActive(false);
    }
}
