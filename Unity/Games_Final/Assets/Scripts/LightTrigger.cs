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
    public bool myLightOn;

    void Start ()
    {
        myLight = GetComponent<Light>();
        myLight.enabled = false;
        myLightOn = false;
    }
	
	void Update ()
    {
        if (Input.GetKeyDown(KeyCode.L))
        {
            myLight.enabled = !myLight.enabled;
        }

        if (myLight.enabled)
        {
            orbLight.material = orbLightOn;
            myLightOn = true;
        }

        if (!myLight.enabled)
        {
            orbLight.material = orbLightOff;
            myLightOn = false;
        }
    }
}
