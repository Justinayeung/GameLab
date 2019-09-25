using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ParticleDie : MonoBehaviour
{
    void Start()
    {
        Destroy(gameObject, 1.3f);
    }
}
