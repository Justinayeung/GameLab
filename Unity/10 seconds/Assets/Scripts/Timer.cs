using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Timer : MonoBehaviour
{
    Image timer;
    private float maxTime = 10.0f;
    public float timerLeft;

    void Start()
    {
        timerLeft = maxTime;
    }

    void Update()
    {
        timer = GetComponent<Image>();
        if (timerLeft > 0)
        {
            timerLeft -= Time.deltaTime;
            timer.fillAmount = timerLeft / maxTime;
        }
        else
        {
            timer.fillAmount = 0;
        }
    }
}
