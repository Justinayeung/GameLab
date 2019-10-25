using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
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
    public Image controlRect;
    public Image quitRect;

    public GameObject MainMenu;
    public GameObject ControlMenu;

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
            Debug.Log("Start");
            pressed = true;
            startRect.color = new Color32(255, 240, 0, 255);
            StartCoroutine(starting());
        }

        if (pressed & thisIndex == 1)
        {
            Debug.Log("Controls");
            pressed = true;
            controlRect.color = new Color32(255, 240, 0, 255);
            StartCoroutine(controls());
        }

        if (pressed && thisIndex == 2)
        {
            Debug.Log("Quit");
            pressed = true;
            quitRect.color = new Color32(255, 240, 0, 255);
            StartCoroutine(quitting());
        }
    }

    IEnumerator starting()
    {
        yield return new WaitForSeconds(1f);
        SceneManager.LoadScene("Level_Select");
    }

    IEnumerator controls()
    {
        yield return new WaitForSeconds(1f);
        MainMenu.SetActive(false);
        ControlMenu.SetActive(true);
    }

    IEnumerator quitting()
    {
        yield return new WaitForSeconds(1f);
        Application.Quit();
    }
}
