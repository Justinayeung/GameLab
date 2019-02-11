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
        if (Input.GetKey(KeyCode.W) || Input.GetKeyDown(KeyCode.A) || Input.GetKeyDown(KeyCode.S) || Input.GetKeyDown(KeyCode.D))
        {
            PlayerWalk = true;
        }
        else
        {
            PlayerWalk = false;
        }

        if (PlayerWalk)
        {
            anim.SetBool("PlayerWalk", true);
        }
        else
        {
            anim.SetBool("PlayerWalk", false);
        }
    }
}
