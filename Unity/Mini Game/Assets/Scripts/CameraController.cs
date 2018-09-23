using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraController : MonoBehaviour
{
    //attaching camera to player
    public GameObject player;

    //offset used so camera doesn't rotate with player
    private Vector3 offset;

    // use this for initialization
    void Start()
    {
        offset = transform.position - player.transform.position;
    }

    // update is called once per frame
    void LateUpdate()
    {
        Vector3 setPosition = transform.position;
        setPosition.x = player.transform.position.x + offset.x;
        setPosition.z = player.transform.position.z + offset.z;
        transform.position = setPosition;
    }
}
