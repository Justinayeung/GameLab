using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class Timer : MonoBehaviour
{
    public Text timer;
    public float timeLeft;

    void Update()
    {
        timeLeft -= Time.deltaTime;
        timer.text = "Time Left: " + Mathf.Round(timeLeft);

        if (timeLeft <= 0.0f)
        {
            timerEnded();
        }
    }

    void timerEnded()
    {

    }
}