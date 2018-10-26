using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class GameOver : MonoBehaviour
{
    private bool isShown = false;

    void Start()
    {
        gameObject.SetActive(false);
    }

    void Update()
    {
        if (!isShown)
        {
            return;
        }
    }

    public void ToggleGameOver()
    {
        gameObject.SetActive(true);
        isShown = true;
    }

    public void Restart()
    {
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
    }
}
