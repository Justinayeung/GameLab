using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using UnityEngine;

public class MenuButton2 : MonoBehaviour
{
    [SerializeField] MenuButtonController2 menuButtonController;
    [SerializeField] Animator animator;
    [SerializeField] AnimatorFunction2 animatorFunction;
    [SerializeField] int thisIndex;

    public bool pressed = false;
    public Image levelRect;
    public Image controlRect;

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

        if (pressed & thisIndex == 0)
        {
            pressed = true;
            controlRect.color = new Color32(255, 240, 0, 255);
            StartCoroutine(main());
        }

        if (pressed & thisIndex == 1)
        {
            pressed = true;
            levelRect.color = new Color32(255, 240, 0, 255);
            StartCoroutine(level());
        }
    }

    IEnumerator level()
    {
        yield return new WaitForSeconds(1f);
        SceneManager.LoadScene("Level_Select");
    }

    IEnumerator main()
    {
        yield return new WaitForSeconds(1f);
        SceneManager.LoadScene("Main_Menu_Screen");
    }
}
