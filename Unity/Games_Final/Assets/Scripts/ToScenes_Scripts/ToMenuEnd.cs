using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class ToMenuEnd : MonoBehaviour
{
    public void ToEndMenu()
    {
        SceneManager.LoadScene("EndMenu");
    }
}
