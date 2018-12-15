using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class ToDeadEnd1 : MonoBehaviour
{
    public GameObject Player1;
    public GameObject Cam1;

    public GameObject Player2;
    public GameObject Cam2;

    void OnCollisionEnter(Collision other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            Player1.SetActive(true);
            Cam1.SetActive(true);
            Player1.transform.position = new Vector3(0, 1.6f, 0);

            Player2.SetActive(false);
            Cam2.SetActive(false);
        }

    }
}
