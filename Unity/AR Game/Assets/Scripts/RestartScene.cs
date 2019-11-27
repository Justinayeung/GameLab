using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class RestartScene : MonoBehaviour
{
    public void restarting()
    {
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
    }
}
