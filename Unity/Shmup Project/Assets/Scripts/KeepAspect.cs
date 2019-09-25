using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class KeepAspect : MonoBehaviour
{
    public Camera LetterBoxCam;
    private Camera mainCam;

    void Start()
    {
        mainCam = Camera.main;
        calculateMain();
    }

    public void calculateMain()
    {
        float aspect = 16f / 9f;

        if (LetterBoxCam.aspect < aspect)
        {
            mainCam.rect = new Rect(0f, 1.0f - LetterBoxCam.aspect / aspect / 2.0f, 1.0f, LetterBoxCam.aspect / aspect);
        }
        else
        {
            mainCam.rect = new Rect((1.0f - aspect / LetterBoxCam.aspect) / 2.0f, 0, aspect / LetterBoxCam.aspect, 1.0f);
        }
    }
}
