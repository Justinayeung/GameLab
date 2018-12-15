using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ToMenu : MonoBehaviour
{
    public GameObject Openpos;
    public GameObject main;
    public AwakeMain menu;

    void toMainMenu()
    {
        menu.openScene = true;
        Openpos.SetActive(false);
        main.SetActive(true);
    }
}
