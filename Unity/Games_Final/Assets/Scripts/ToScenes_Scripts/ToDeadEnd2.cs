using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class ToDeadEnd2 : MonoBehaviour
{
    public GameObject Player1;
    public GameObject Cam1;

    public GameObject Player2;
    public GameObject Cam2;

    void OnCollisionEnter(Collision other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            Player1.SetActive(false);
            Cam1.SetActive(false);
            Player1.transform.position = new Vector3(0, 1.6f, 0);

            Player2.SetActive(true);
            Cam2.SetActive(true);
        }

    }
}
