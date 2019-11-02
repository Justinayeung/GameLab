using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Group4 : MonoBehaviour
{
    Vector3 start;
    Vector3 des;
    public DroughtManager manager;

    void Start()
    {
        start = new Vector3(transform.position.x, transform.position.y + 1, transform.position.z);
        des = new Vector3(transform.position.x, transform.position.y - 3, transform.position.z);
    }

    void Update()
    {
        if (manager.Group4)
        {
            transform.position = Vector3.Lerp(start, des, Mathf.PingPong(Time.time / 8, 1));
        }
    }
}
