using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FadeOutEnding : MonoBehaviour
{
    public Animator fadeToBlack;
    bool once = true;
    // Start is called before the first frame update

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player") && once)
        {
            fadeToBlack.SetTrigger("FadeToBlack");
            once = false;
        }

    }
  
}
