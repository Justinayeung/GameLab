using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Timer : MonoBehaviour
{
    Image timer;
    public float maxTime = 10.0f;
    private float timerLeft;

    void Start()
    {
        timer = GetComponent<Image>();
        timerLeft = maxTime;
    }

    void Update()
    {
        if (timerLeft > 0)
        {
            timerLeft -= Time.deltaTime;
            timer.fillAmount = timerLeft / maxTime;
        }
        else
        {
            Time.timeScale = 0;
        }
    }
}
