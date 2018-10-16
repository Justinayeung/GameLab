using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraController : MonoBehaviour
{
    public Transform target;
    public float smoothTime = 0.3f;
    public float posY;
    public float minX;
    public float maxX;
    public float minY;
    public float maxY;

    private Vector3 velocity = Vector3.zero;

    void Update()
    {
        Vector3 targetPosition = target.TransformPoint(new Vector3(0, posY, -10));
        Vector3 desirePosition = Vector3.SmoothDamp(transform.position, target.position, ref velocity, smoothTime);
        transform.position = new Vector3(Mathf.Clamp(desirePosition.x, minX, maxX), Mathf.Clamp(desirePosition.y, minY, maxY), targetPosition.z);
    }
}
