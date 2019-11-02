using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DirectionFollow : MonoBehaviour
{
    public Transform followPlayer;
    Vector3 offset;

    void Start()
    {
        offset = transform.position - followPlayer.position;
    }

    void Update()
    {
        Vector3 rotation = new Vector3(0, 1f, 0);
        transform.RotateAround(followPlayer.position, rotation, -5f);
    }

    void LateUpdate()
    {
        Vector3 targetPosition = followPlayer.position + offset;
        targetPosition.y = transform.position.y;
        transform.position += (targetPosition - transform.position) * 0.1f;
    }
}
