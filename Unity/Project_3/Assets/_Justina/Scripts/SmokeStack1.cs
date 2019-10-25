using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SmokeStack1 : MonoBehaviour
{
    public PollutedManager manager;

    void Update()
    {
        if (manager.smokeStack1)
        {
            Vector3 position = new Vector3(transform.position.x, 0, transform.position.z);
            transform.position = Vector3.MoveTowards(transform.position, position, 4 * Time.deltaTime);
        }
    }
}
