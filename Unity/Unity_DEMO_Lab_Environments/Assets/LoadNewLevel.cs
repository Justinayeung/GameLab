using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class LoadNewLevel : MonoBehaviour
{
    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            SceneManager.LoadSceneAsync("room", LoadSceneMode.Additive);    //Additive so based on camera view, load when you see it
        }
    }

    void Awake()    //Loads before start
    {
        DontDestroyOnLoad(transform.gameObject);
    }
}
