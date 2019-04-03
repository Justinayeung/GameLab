using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraControl : MonoBehaviour
{
    public GameObject cameraStill;
    public GameObject cameraMove;

    void Awake()
    {
        cameraStill.SetActive(false);
        cameraMove.SetActive(true);
    }

    void OnTriggerEnter2D(Collider2D other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            cameraStill.SetActive(true);
        }
    }
}
