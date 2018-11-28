using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class Timer : MonoBehaviour
{
    public LightTrigger lightTrigger;

    Image timerBar;
    public float maxTime = 15f;
    float timeLeft;

    void Start()
    {
        timerBar = GetComponent<Image>();
        timeLeft = maxTime;
    }

    void Update()
    {
        if (timeLeft > 0 && lightTrigger.myLightOn)
        {
            timeLeft -= Time.deltaTime;
            timerBar.fillAmount = timeLeft/maxTime;
        }

        if (timeLeft == 0)
        {
            Time.timeScale = 0;
            lightTrigger.myLightOn = false;
        }
    }
}
