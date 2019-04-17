using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Camera : MonoBehaviour
{
    public GameObject cameraStill;
    public GameObject cameraMove;
    public GameObject colliders;

    void OnTriggerEnter2D(Collider2D other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            cameraMove.SetActive(true);
            cameraStill.SetActive(false);
            colliders.SetActive(true);
        }
    }
}
