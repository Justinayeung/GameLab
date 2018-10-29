using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class ButtonScript : MonoBehaviour
{

    public int sceneNum;


    public void PlayGame()
    {
        SceneManager.LoadScene(sceneNum);
    }
}