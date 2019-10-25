using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UnderDie : MonoBehaviour
{
    void Start()
    {
        Destroy(gameObject, 2f);
    }
}
