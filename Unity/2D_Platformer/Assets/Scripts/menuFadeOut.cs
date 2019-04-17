using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class menuFadeOut : MonoBehaviour
{
    public Animator animMenu;
    
    void Start()
    {
        animMenu = GetComponent<Animator>();
    }

    
    void Update()
    {
        if (Input.anyKey)
        {
            animMenu.SetTrigger("FadeOut");
        }

    }
}
