using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Group3 : MonoBehaviour
{
    Vector3 start;
    Vector3 des;
    public DroughtManager manager;

    void Start()
    {
        start = new Vector3(transform.position.x, transform.position.y + 1, transform.position.z);
        des = new Vector3(transform.position.x, transform.position.y - 2, transform.position.z);
    }

    void Update()
    {
        if (manager.Group3)
        {
            transform.position = Vector3.Lerp(start, des, Mathf.PingPong(Time.time / 15, 1));
        }
    }
}
