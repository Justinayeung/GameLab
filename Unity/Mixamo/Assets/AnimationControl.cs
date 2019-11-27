using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimationControl : MonoBehaviour
{
    Animator anim;
    bool isWalking;
    float h;

    void Start()
    {
        anim = GetComponent<Animator>();
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.UpArrow))
        {
            isWalking = true;
            anim.SetBool("isWalking", isWalking);
        }

        if (Input.GetKeyUp(KeyCode.UpArrow))
        {
            isWalking = false;
            anim.SetBool("isWalking", isWalking);
        }

        h = Input.GetAxis("Horizontal");
        if (isWalking)
        {
            transform.Rotate(0, h*3, 0);
        }

        if (Input.GetKeyDown(KeyCode.Space))
        {
            anim.SetTrigger("doDance");
        }

        if(Input.GetKeyUp(KeyCode.Space) && !isWalking)
        {
            anim.SetTrigger("doDance");
        }
    }
}
