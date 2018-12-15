using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StartMenu : MonoBehaviour
{
    public GameObject startMenu;
    public GameObject helpMenu;

    public void menuHelp()
    {
        startMenu.SetActive(false);
        helpMenu.SetActive(true);
    }

    public void back()
    {
        startMenu.SetActive(true);
        helpMenu.SetActive(false);
    }
}
