using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using UnityEngine;

public class MenuButton2 : MonoBehaviour
{
	[SerializeField] MenuButtonController2 menuButtonController;
	[SerializeField] Animator animator;
	[SerializeField] AnimatorFunctions2 animatorFunctions;
	[SerializeField] int thisIndex;

    public GameObject MainMenu;
    public GameObject ControlMenu;
    public bool pressed = false;
    public Image backRect;


    // Update is called once per frame
    void Update()
    {
		if(menuButtonController.index == thisIndex)
		{
			animator.SetBool ("selected", true);
			if(Input.GetAxis ("Submit") == 1){
				animator.SetBool ("pressed", true);
                pressed = true;
			}else if (animator.GetBool ("pressed")){
				animator.SetBool ("pressed", false);
				animatorFunctions.disableOnce = true;
			}
		}else{
			animator.SetBool ("selected", false);
		}

        if (pressed && thisIndex == 0)
        {
            Debug.Log("Menu");
            pressed = true;
            backRect.color = new Color32(255, 240, 0, 255);
            StartCoroutine(mainMenu());
        }
    }

    IEnumerator mainMenu()
    {
        yield return new WaitForSeconds(1f);
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
        MainMenu.SetActive(true);
        ControlMenu.SetActive(false);
    }
}
