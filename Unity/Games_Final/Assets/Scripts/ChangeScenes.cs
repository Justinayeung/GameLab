using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class ChangeScenes : MonoBehaviour
{
    public void toMenu()
    {
        SceneManager.LoadScene("MainMenu");
    }

    public void toGame()
    {
        SceneManager.LoadScene("Game");
    }

    public void toEnd()
    {
        SceneManager.LoadScene("EndMenu");
    }
}
