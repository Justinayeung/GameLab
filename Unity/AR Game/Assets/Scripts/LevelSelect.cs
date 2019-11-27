using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LevelSelect : MonoBehaviour
{
    public GameObject Chapter1, Chapter2, Chapter3, Chapter4, Chapter5, Chapter6;
    public static bool Level1, Level2, Level3, Level4, Level5, Level6;

    void Start()
    {


    }

    void Update()
    {
        if (PlayerController.Level1)
        {
            Chapter1.SetActive(true);
        }
        else
        {
            Chapter1.SetActive(false);

        }
        if (PlayerController.Level2)
        {
            Chapter2.SetActive(true);
        }
        else
        {
            Chapter2.SetActive(false);

        }
        if (PlayerController.Level3)
        {
            Chapter3.SetActive(true);
        }
        else
        {
            Chapter3.SetActive(false);

        }
        if (PlayerController.Level4)
        {
            Chapter4.SetActive(true);
        }
        else
        {
            Chapter4.SetActive(false);

        }
        if (PlayerController.Level5)
        {
            Chapter5.SetActive(true);
        }
        else
        {
            Chapter5.SetActive(false);

        }
        if (PlayerController.Level6)
        {
            Chapter6.SetActive(true);
        }
        else
        {
            Chapter6.SetActive(false);

        }
    }
}
