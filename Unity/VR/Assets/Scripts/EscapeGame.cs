using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EscapeGame : MonoBehaviour
{
    bool quit = false;
    // Update is called once per frame
    void Update()
    {
        if (Input.GetKey("escape"))
        {
            Application.Quit();
        }

        if (quit)
        {
            Application.Quit();
        }
        
    }

    public void quitting()
    {
        quit = true;
    }

    void quitGame()
    {
        Application.Quit();
    }
}
