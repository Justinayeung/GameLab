using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class exitGame : MonoBehaviour
{
    CursorLockMode wantedMode;

    public void Update()
    {
        Cursor.visible = true;
        Cursor.lockState = wantedMode = CursorLockMode.None;
    }
    public void ClickExit()
    {
        Application.Quit();
        Debug.Log("Game is Exiting");
    }
}
