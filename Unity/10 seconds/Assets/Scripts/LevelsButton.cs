using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LevelsButton : MonoBehaviour
{
    public GameObject button;
    public static bool tutorialDone = false;

    void Start()
    {
        
    }

    void Update()
    {
        if (tutorialDone)
        {
            button.SetActive(true);
        }
        else
        {
            button.SetActive(false);
        }
    }
}
