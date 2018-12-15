using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OPEN : MonoBehaviour
{
    public GameObject Gate;

    void Start()
    {
        Gate.SetActive(false);
    }

    void OpenGate()
    {
        Gate.SetActive(true);
    }
}
