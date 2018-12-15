using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OnAwake : MonoBehaviour
{
    public GameObject Player1;
    public GameObject Cam1;

    public GameObject Player2;
    public GameObject Cam2;

    void Awake()
    {
        Player1.SetActive(true);
        Cam1.SetActive(true);

        Player2.SetActive(false);
        Cam2.SetActive(false);
    }
}
