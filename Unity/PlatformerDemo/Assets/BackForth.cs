using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BackForth : MonoBehaviour
{
    float speed = .5f;
    float distance;

    void Start()
    {
        distance = Camera.main.orthographicSize * Screen.width / Screen.height;
    }

    void Update()
    {
        Vector2 newPosition = transform.position;
        newPosition.x = Mathf.SmoothStep(-distance, distance, Mathf.PingPong(Time.time * speed, 1));
        transform.position = newPosition;

        //up and down is the same thing but with y
    }
}
