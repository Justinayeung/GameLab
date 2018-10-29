using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class OtterToAquarium : MonoBehaviour
{
    public GameObject otterScene;
    public GameObject aquariumScene;

    void OnTriggerEnter2D(Collider2D other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            otterScene.SetActive(false);
            aquariumScene.SetActive(true);
        }
    }
}
