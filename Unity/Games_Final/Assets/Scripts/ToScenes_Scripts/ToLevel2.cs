using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class ToLevel2 : MonoBehaviour
{
    public AudioSource portal;

    void OnCollisionEnter(Collision other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            portal.Play();
            SceneManager.LoadScene("Level_2");
        }
    }
}
