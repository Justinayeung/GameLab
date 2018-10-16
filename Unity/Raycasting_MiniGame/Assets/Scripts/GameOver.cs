using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class GameOver : MonoBehaviour
{
    public Text gameOver;
    public GameObject objs;

    void Start()
    {
        gameOver.text = "";
    }

    void Update()
    {
        if (GameObject.FindGameObjectWithTag("Panda") == null)
        {
            gameOver.text = "Game Over";
            objs.SetActive(true);
        }
    }
}
