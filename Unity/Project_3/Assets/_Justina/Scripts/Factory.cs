using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Factory : MonoBehaviour
{
    public PollutedManager manager;

    void Update()
    {
        if (manager.factory)
        {
            Vector3 position = new Vector3(transform.position.x, 1.3f, transform.position.z);
            transform.position = Vector3.MoveTowards(transform.position, position, 8 * Time.deltaTime);
        }
    }
}
