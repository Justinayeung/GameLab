using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneChange : MonoBehaviour
{
    public string sceneName;
    public Timer timer;
    
    public void Loadscene()
    {
        SceneManager.LoadScene(sceneName);
    }

    public void Restart()
    {
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
        timer.timerLeft = 10f;
    }
}
