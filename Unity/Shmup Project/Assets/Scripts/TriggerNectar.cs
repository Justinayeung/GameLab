using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TriggerNectar : MonoBehaviour
{
    CircleCollider2D sC;

    void Start()
    {
        Destroy(gameObject, 8f);
        sC = GetComponent<CircleCollider2D>();
        StartCoroutine(triggerScale());
    }

    IEnumerator triggerScale()
    {
        sC.radius = 0.8f;
        yield return new WaitForSeconds(2f);
        sC.radius = 0.9f;
        yield return new WaitForSeconds(0.8f);
        sC.radius = 1f;
        yield return new WaitForSeconds(1.2f);
        sC.radius = 1.2f;
        yield return new WaitForSeconds(1f);
        sC.radius = 1f;
        yield return new WaitForSeconds(1f);
        sC.radius = 0.8f;
        yield return new WaitForSeconds(0.5f);
        sC.radius = 0.5f;
        yield return new WaitForSeconds(0.5f);
        sC.radius = 0.2f;
    }
}
