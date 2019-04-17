using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Flashlight : MonoBehaviour
{
    public Sprite lightBright;
    SpriteRenderer sr;
    public Collider2D flashlight;
    bool off;

    void Start()
    {
        off = true;
        sr = GetComponent<SpriteRenderer>();
        sr.sprite = null;
        flashlight.enabled = false;
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.RightShift) && off)
        {
            flashlight.enabled = true;
            sr.sprite = lightBright;
            off = false;
        }
        else if (Input.GetKeyDown(KeyCode.RightShift) && !off)
        {
            flashlight.enabled = false;
            sr.sprite = null;
            off = true;
        }
    }
}
