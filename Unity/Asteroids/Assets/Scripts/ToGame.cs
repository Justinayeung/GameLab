using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class ToGame : MonoBehaviour
{
    public void ToMain()
    {
        SceneManager.LoadScene("Asteroids");
    }
}
