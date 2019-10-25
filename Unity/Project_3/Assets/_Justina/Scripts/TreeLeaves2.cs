using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TreeLeaves2 : MonoBehaviour
{
    public PollutedManager manager;
    float scale;
    bool vanish;

    void Start()
    {
        scale = 4;
        vanish = false;
    }

    void Update()
    {
        if (manager.treeLeaves2)
        {
            transform.localScale = new Vector3(scale, scale, scale);
            vanish = true;
        }

        if (vanish)
        {
            scale -= 0.1f;
        }

        if (scale <= 0)
        {
            vanish = false;
            scale = 0;
            Destroy(gameObject);
        }
    }
}
