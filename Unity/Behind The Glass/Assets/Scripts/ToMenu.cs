using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class ToMenu : MonoBehaviour
{
    public void ExitToMenu()
    {
        SceneManager.LoadScene("mainMENUBTG");
    }
}
