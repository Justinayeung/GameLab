using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class SealToAquarium : MonoBehaviour
{
    public GameObject sealScene;
    public GameObject aquariumScene;

    void OnTriggerEnter2D(Collider2D other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            sealScene.SetActive(false);
            aquariumScene.SetActive(true);
        }
    }
}
