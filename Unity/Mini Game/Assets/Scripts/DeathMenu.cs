using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;
using UnityEngine.UI;

public class DeathMenu : MonoBehaviour
{
    public Text scoreText;
    public Text countText;
    public Image backgroundImg;

    public Color Yellow;

    private float transition = 0.0f;
    private bool isShown = false;

	// Use this for initialization
	void Start ()
    {
        //Turn off when start
        gameObject.SetActive(false);
	}

    void Update()
    {
        if (!isShown)
        {
            return;
        }

        transition += Time.deltaTime;
        backgroundImg.color = Color.Lerp(new Color(0, 0, 0, 0), Yellow, transition);
    }

    //Calling death menu 
    public void ToggleEndMenu()
    {
        gameObject.SetActive(true);
        scoreText.text = countText.text.ToString();
        isShown = true;
    }


    //loading a scene
    public void Restart()
    {
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
    }

    public void ToMenu()
    {
        SceneManager.LoadScene("Menu");
    }
}
