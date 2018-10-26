using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class Score : MonoBehaviour
{
    public Text scoreText;
    private int score;

    void Start()
    {
        score = 0;
        SetScoreText();
    }

    void OnCollisionEnter(Collision other)
    {
        if (other.gameObject.CompareTag("Asteroid"))
        {
            score = score + 1;
            SetScoreText();
        }
    }

    void SetScoreText()
    {
        scoreText.text = score.ToString();
    }
}
