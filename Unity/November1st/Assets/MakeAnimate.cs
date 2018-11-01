using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MakeAnimate : MonoBehaviour
{
    public Animator anim;
    float p_color;
    bool p_wiggle;

	void Start ()
    {
        anim = GetComponent<Animator>();
        p_color = 0;
        p_wiggle = false;
	}
	
	void Update ()
    {
        if (Input.GetKeyDown(KeyCode.UpArrow))
        {
            p_color++;
            Debug.Log(p_color);
        }

        if (Input.GetKeyDown(KeyCode.DownArrow))
        {
            p_color--;
            Debug.Log(p_color);
        }

        if (Input.GetKeyDown(KeyCode.Space))
        {
            p_wiggle = !p_wiggle;
            Debug.Log(p_wiggle);
        }

        anim.SetFloat("doColor", p_color);
        anim.SetBool("doWiggle", p_wiggle);

    }
}
