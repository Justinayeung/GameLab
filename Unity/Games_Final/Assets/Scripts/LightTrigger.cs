using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class LightTrigger : MonoBehaviour
{
    public Renderer orbLight;
    public Material orbLightOn;
    public Material orbLightOff;
    public Light myLight;

    public Image timerBar;
    public float maxTime = 15;
    float timeLeft;

    void Start ()
    {
        myLight = GetComponent<Light>();

        timerBar = GetComponent<Image>();
        timeLeft = maxTime;
    }
	
	void Update ()
    {
        if (Input.GetKey(KeyCode.L))
        {
            myLight.enabled = !myLight.enabled;
        }

        if (myLight.enabled)
        {
            orbLight.material = orbLightOn;

            if (timeLeft > 0)
            {
                timeLeft -= Time.deltaTime;
                timerBar.fillAmount = timeLeft / maxTime;
            }
        }

        if (!myLight.enabled)
        {
            orbLight.material = orbLightOff;

            if (timeLeft == 0)
            {
                Time.timeScale = 0;
            }
        }
    }
}
