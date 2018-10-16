using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class Timer : MonoBehaviour
{
    public float timeLeft = 15.0f;
    public Text countDown;
    public Text savePanda;
    public Text scoreText;

    public RestartMenu restartMenu;
    private int score;

    void Start()
    {
        score = 11;
        savePanda.text = "";
        SetScoreText();
    }

    void Update()
    {
        timeLeft -= Time.deltaTime;
        countDown.text = "Time Left: " + Mathf.Round(timeLeft);
        if (timeLeft <= 0)
        {
            savePanda.text = "Saved pandas: " + score;
            countDown.text = "";
            restartMenu.ToggleRestartMenu();
        }
    }

    void OnCollisionEnter(Collision other)
    {
        if (other.gameObject.CompareTag("Panda"))
        {
            other.gameObject.SetActive(false);
            score = score - 1;
            SetScoreText();
        }
    }

    void SetScoreText()
    {
        scoreText.text = "Pandas: " + score.ToString();
    }
}
