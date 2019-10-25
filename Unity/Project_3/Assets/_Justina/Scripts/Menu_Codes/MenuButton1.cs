using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using UnityEngine;

public class MenuButton1 : MonoBehaviour
{
    [SerializeField] MenuButtonController1 menuButtonController;
    [SerializeField] Animator animator;
    [SerializeField] AnimatorFunction1 animatorFunction;
    [SerializeField] int thisIndex;

    public bool pressed = false;
    public Image controlRect;

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

        if (pressed & thisIndex == 0)
        {
            Debug.Log("Controls");
            pressed = true;
            controlRect.color = new Color32(255, 240, 0, 255);
            StartCoroutine(controls());
        }

    }

    IEnumerator controls()
    {
        yield return new WaitForSeconds(1f);
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
        MainMenu.SetActive(true);
        ControlMenu.SetActive(false);
    }
}
