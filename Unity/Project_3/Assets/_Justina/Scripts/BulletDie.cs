using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BulletDie : MonoBehaviour
{
    void Start()
    {
        Destroy(gameObject, 2f);
    }
}
