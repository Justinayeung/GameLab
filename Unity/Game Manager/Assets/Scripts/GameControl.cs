using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameControl : MonoBehaviour
{
    //Make sure your empty game object name is not GameControl or else you might run into problems

    public static GameControl control;

    public float health;
    public float money;

    void Awake()
    {
        //This makes it that even if you changed the game control in scene 3 it stays the same as scene 2 because it first existed there
        //If there is no control
        if (control == null)
        {
            DontDestroyOnLoad(gameObject);
            control = this;
        }
        else
        
        if (control != this)
        {
            Destroy(gameObject);
        }
    }

    void OnGUI()
    {
        GUI.Label(new Rect(10, 10, 100, 30), "Health: " + health);
        GUI.Label(new Rect(10, 40, 100, 30), "Health: " + money);
    }
}
