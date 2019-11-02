using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Group1 : MonoBehaviour
{
    Vector3 start;
    Vector3 des;
    public DroughtManager manager;

    void Start()
    {
        start = new Vector3(transform.position.x, transform.position.y - 0.5f, transform.position.z);
        des = new Vector3(transform.position.x, transform.position.y + 1.5f, transform.position.z);
    }

    void Update()
    {
        if (manager.Group1)
        {
            transform.position = Vector3.Lerp(start, des, Mathf.PingPong(Time.time / 10, 1));
        }
    }
}
