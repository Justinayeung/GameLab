using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class MainToWalking : MonoBehaviour
{
    public Image black;

    void Awake()
    {
        black.canvasRenderer.SetAlpha(1);
    }

    void OnCollisionEnter(Collision other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            black.CrossFadeAlpha(0, 0.5f, true);
        }
    }
}
