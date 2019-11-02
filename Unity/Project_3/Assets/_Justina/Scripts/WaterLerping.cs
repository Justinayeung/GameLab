using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaterLerping : MonoBehaviour
{
    public Vector3 start;
    public  Vector3 des;

    void Update()
    {
        transform.position = Vector3.Lerp(start, des, Mathf.PingPong(Time.time/15, 1));
    }
}
