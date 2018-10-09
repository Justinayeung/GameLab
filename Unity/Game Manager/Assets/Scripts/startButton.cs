using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class startButton : MonoBehaviour
{
    public void StartGame(string levelName)
    {
        SceneManager.LoadScene(levelName);
    }
}
