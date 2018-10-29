using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using UnityEngine;

public class Restart : MonoBehaviour
{
    private bool isShown = false;
    public Text caught;

    void Start()
    {
        gameObject.SetActive(false);
        caught.text = " ";
    }

    void Update()
    {
        if (isShown)
        {
            return;
        }
    }

    public void ToggleRestartMenu()
    {
        gameObject.SetActive(true);
        caught.text = "You Got Caught";
        isShown = true;
    }

    public void RestartButton()
    {
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
    }
}
