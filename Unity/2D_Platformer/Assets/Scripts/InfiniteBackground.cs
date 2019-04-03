using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InfiniteBackground : MonoBehaviour
{
    private float length, startpos;
    public GameObject cam;
    public float infiniteEffect;
    void Start()
    {
        startpos = transform.position.x;
        length = GetComponent<SpriteRenderer>().bounds.size.x;
    }

    void FixedUpdate()
    {
        //How are we move relative to the camera
        float temp = (cam.transform.position.x * (1 - infiniteEffect));
        //Distance of how far we moved from the start point
        float dist = (cam.transform.position.x * infiniteEffect);
        transform.position = new Vector3(startpos + dist, transform.position.y, transform.position.z);
        if (temp > startpos + length) startpos += length;
        else if (temp < startpos - length) startpos -= length;
    }
}
