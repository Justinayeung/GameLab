using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using UnityEngine;

public class GameOver : MonoBehaviour
{
    public Text scoreText;
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
        scoreText.text = scoreText.text.ToString();
        isShown = true;
    }

    public void Restart()
    {
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
    }
}
