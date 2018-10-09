using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class nextScene : MonoBehaviour
{
    public int sceneNum;

    void OnGUI()
    {
        if (GUI.Button (new Rect(Screen.width / 2 - 50, Screen.height - 50, 100, 40), "Load Scene: " + sceneNum))
        {
            SceneManager.LoadScene(sceneNum);
        }
    }
}
