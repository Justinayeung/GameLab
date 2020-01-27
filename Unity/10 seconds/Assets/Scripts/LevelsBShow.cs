using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LevelsBShow : MonoBehaviour
{
    public static bool tutorialDone = false;
    public GameObject win;

    void Start()
    {
        
    }

    void Update()
    {
        if (win.activeInHierarchy == true)
        {
            LevelsButton.tutorialDone = true;
        }
    }
}
