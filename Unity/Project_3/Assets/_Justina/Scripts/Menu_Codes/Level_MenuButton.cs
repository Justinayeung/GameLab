using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using UnityEngine;

public class Level_MenuButton : MonoBehaviour
{
    [SerializeField] Level_MenuButtonController menuButtonController;
    [SerializeField] Animator animator;
    [SerializeField] Level_AnimatorFunction animatorFunction;
    [SerializeField] int thisIndex;

    public bool pressed = false;
    public Image pollutedImage;
    public Image waterImage;
    public Image droughtImage;

    public static bool pollutedLevel;
    public static bool waterLevel;
    public static bool droughtLevel;

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
            pollutedLevel = true;
            SceneManager.LoadScene("Player_Select");
        }

        if (pressed && thisIndex == 1)
        {
            waterLevel = true;
            SceneManager.LoadScene("Player_Select");
        }

        if (pressed && thisIndex == 2)
        {
            droughtLevel = true;
            SceneManager.LoadScene("Player_Select");
        }
    }
}
