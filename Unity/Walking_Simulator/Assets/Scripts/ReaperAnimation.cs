using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ReaperAnimation : MonoBehaviour
{
    Animator anim;
    bool PlayerWalk;

    void Start()
    {
        anim = GetComponent<Animator>();
        PlayerWalk = false;
    }

    void Update()
    {
        if (PlayerWalk)
        {
            anim.SetBool("PlayerWalk", true);
        }
        else
        {
            anim.SetBool("PlayerWalk", false);
        }

        if (Input.GetKey(KeyCode.W) || Input.GetKey(KeyCode.A) || Input.GetKey(KeyCode.S) || Input.GetKey(KeyCode.D))
        {
            PlayerWalk = true;
        }
        else
        {
            PlayerWalk = false;
        }

    }
}
