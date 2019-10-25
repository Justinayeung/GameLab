using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TreeGroup2 : MonoBehaviour
{
    public PollutedManager manager;
    float scale1;
    float scale2;
    float scale3;
    bool vanish;

    void Start()
    {
        scale1 = 7;
        scale2 = 6;
        scale3 = 9;
        vanish = false;
    }

    void Update()
    {
        if (manager.treeGroup2)
        {
            transform.localScale = new Vector3(scale1, scale2, scale3);
            vanish = true;
        }

        if (vanish)
        {
            scale1 -= 0.1f;
            scale2 -= 0.1f;
            scale3 -= 0.1f;
        }

        if (scale1 <= 0 && scale2 <= 0 && scale3 <= 0)
        {
            vanish = false;
            scale1 = 0;
            scale2 = 0;
            scale3 = 0;
            Destroy(gameObject);
        }
    }
}
