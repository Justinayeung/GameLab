using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class ToLevel1 : MonoBehaviour
{
    public GameObject Player1;
    public GameObject Cam1;

    public GameObject Player2;
    public GameObject Cam2;

    void OnCollisionEnter(Collision other)
    {
        Player1.SetActive(true);
        Cam1.SetActive(true);

        Player2.SetActive(false);
        Cam2.SetActive(false);
    }
}
