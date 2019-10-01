using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using UnityEngine;

public class MenuButton1 : MonoBehaviour
{
	[SerializeField] MenuButtonController1 menuButtonController;
	[SerializeField] Animator animator;
	[SerializeField] AnimatorFunctions1 animatorFunctions;
	[SerializeField] int thisIndex;

    public GameObject MainMenu;
    public GameObject MainGame;
    public GameObject EndMenu;
    public bool pressed = false;
    public Image menuRect;
    public Image quitRect;

    void Start()
    {
        MainMenu.SetActive(true);
        MainGame.SetActive(false);
        EndMenu.SetActive(false);
    }

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
            menuRect.color = new Color32(255, 240, 0, 255);
            StartCoroutine(mainMenu());
        }

        //if (pressed && thisIndex == 1)
        //{
        //    Debug.Log("Restart");
        //    pressed = true;
        //    restartRect.color = new Color32(255, 240, 0, 255);
        //    StartCoroutine(restarting());
        //}

        if (pressed && thisIndex == 1)
        {
            Debug.Log("Quit");
            pressed = true;
            quitRect.color = new Color32(255, 240, 0, 255);
            StartCoroutine(quitting());
        }
    }

    IEnumerator mainMenu()
    {
        yield return new WaitForSeconds(1f);
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
        MainMenu.SetActive(true);
        MainGame.SetActive(false);
        EndMenu.SetActive(false);
    }

    //IEnumerator restarting()
    //{
    //    yield return new WaitForSeconds(1f);
    //    SceneManager.LoadScene(SceneManager.GetActiveScene().name);
    //    MainMenu.SetActive(false);
    //    MainGame.SetActive(true);
    //    EndMenu.SetActive(false);
    //}

    IEnumerator quitting()
    {
        yield return new WaitForSeconds(1f);
        Application.Quit();
    }
}
