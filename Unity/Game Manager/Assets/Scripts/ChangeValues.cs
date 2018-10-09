using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChangeValues : MonoBehaviour
{
    void OnGUI()
    {
        if (GUI.Button(new Rect(10, 100, 100, 30), "Health up"))
        {
            //GameControl can be called because it is a public static in GameControl script
            GameControl.control.health += 5;
        }

        if (GUI.Button(new Rect(10, 140, 100, 30), "Health down"))
        {
            GameControl.control.health -= 5;
        }

        if (GUI.Button(new Rect(10, 180, 100, 30), "Money up"))
        {
            GameControl.control.money += 5;
        }

        if (GUI.Button(new Rect(10, 220, 100, 30), "Money up"))
        {
            GameControl.control.money -= 5;
        }
    }
}
