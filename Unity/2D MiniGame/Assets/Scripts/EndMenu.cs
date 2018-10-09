using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using UnityEngine;

public class EndMenu : MonoBehaviour
{
    public Text scoreText1;
    public Text scoreText2;
    public Text winText1;
    public Text winText2;

    public Image backgroundImg;

    private float transition = 0.0f;
    private bool isShown = false;

    public Color Yellow;

    void Start()
    {
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

    public void ToggleEndMenu()
    {
        gameObject.SetActive(true);
        scoreText1.text = scoreText1.text.ToString();
        scoreText2.text = scoreText2.text.ToString();
        isShown = true;
    }


    //loading a scene
    public void Restart()
    {
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
    }
}
