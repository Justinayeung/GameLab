using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class exitGame : MonoBehaviour
{
   public void ClickExit()
    {
        Application.Quit();
        Debug.Log("Game is Exiting");
    }
}
