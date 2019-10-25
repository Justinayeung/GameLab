using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Level_MenuButtonController : MonoBehaviour
{
    public int index;
    [SerializeField] bool keyDown;
    [SerializeField] int maxIndex;
    public AudioSource audioSource;
    Level_MenuButton button;

    void Start()
    {
        button = GameObject.FindGameObjectWithTag("Button").GetComponent<Level_MenuButton>();
        audioSource = GetComponent<AudioSource>();
    }

    void Update()
    {
        if (button.pressed == false)
        {
            if (Input.GetAxis("Horizontal1") != 0)
            {
                if (!keyDown)
                {
                    if (-Input.GetAxis("Horizontal1") < 0)
                    {
                        if (index < maxIndex)
                        {
                            index++;
                        }
                        else
                        {
                            index = 0;
                        }
                    }
                    else if (-Input.GetAxis("Horizontal1") > 0)
                    {
                        if (index > 0)
                        {
                            index--;
                        }
                        else
                        {
                            index = maxIndex;
                        }
                    }
                    keyDown = true;
                }
            }
            else
            {
                keyDown = false;
            }
        }
    }
}
