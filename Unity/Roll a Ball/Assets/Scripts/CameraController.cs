using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraController : MonoBehaviour
{
    //This script is for attaching the camera to the player
    public GameObject player;

    //Offset is used so that when the player rotates the camera doesn't rotate with it
    private Vector3 offset;

    void Start()
    {
        offset = transform.position - player.transform.position;
    }


    void LateUpdate()
    {
        transform.position = player.transform.position + offset;
    }
}