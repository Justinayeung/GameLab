using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using UnityEngine;

public class RestartMenu : MonoBehaviour
{
    public Image backgroundImg;
    private bool isShown = false;

    public Color Green;

    private float transition = 2.0f;

	void Start ()
    {
        gameObject.SetActive(false);
	}
	
	void Update ()
    {
        if (!isShown)
        {
            return;
        }
        transition += Time.deltaTime;
        backgroundImg.color = Color.Lerp(new Color(0, 0, 0, 0), Green, transition);
    }

    public void ToggleRestartMenu()
    {
        gameObject.SetActive(true);
        isShown = true;
    }

    public void Restart()
    {
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
    }

    public void ToMenu()
    {
        SceneManager.LoadScene("Menu");
    }
}
