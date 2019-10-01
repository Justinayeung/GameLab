using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ParticleDieLvl : MonoBehaviour
{
    void Start()
    {
        Destroy(gameObject, 1.8f);
    }
}
