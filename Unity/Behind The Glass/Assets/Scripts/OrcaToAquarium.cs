using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class OrcaToAquarium : MonoBehaviour
{
    public GameObject orcaScene;
    public GameObject aquariumScene;

    void OnTriggerEnter2D(Collider2D other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            orcaScene.SetActive(false);
            aquariumScene.SetActive(true);
        }
    }
}
