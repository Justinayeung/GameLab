using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class MenuButton : MonoBehaviour
{
    [SerializeField] MenuButtonController menuButtonController;
    [SerializeField] Animator animator;
    [SerializeField] AnimatorFunction animatorFunction;
    [SerializeField] int thisIndex;

    public bool pressed = false;
    public Image startRect;
    public Image quitRect;

    void Start()
    {
        
    }

    void Update()
    {
        if (menuButtonController.index == thisIndex)
        {
            animator.SetBool("selected", true);
            if (Input.GetAxis("Submit") == 1)
            {
                animator.SetBool("pressed", true);
                pressed = true;
            }
            else if (animator.GetBool("pressed"))
            {
                animator.SetBool("pressed", false);
                animatorFunction.disableOnce = true;
            }
        }
        else
        {
            animator.SetBool("selected", false);
        }

        if (pressed && thisIndex == 0)
        {

        }
    }
}
