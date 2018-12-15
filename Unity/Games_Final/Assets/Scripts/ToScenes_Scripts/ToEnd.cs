using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class ToEnd : MonoBehaviour
{
    public GameObject objectPortal;
    public GameObject objectAnimate;
    public GameObject Player;

    void Start()
    {
        objectAnimate.SetActive(false);
        objectPortal.SetActive(true);
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            objectPortal.SetActive(false);
            objectAnimate.SetActive(true);
            Player.SetActive(false);
        }
    }
}
