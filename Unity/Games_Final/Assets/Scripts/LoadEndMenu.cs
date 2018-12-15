using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LoadEndMenu : MonoBehaviour
{
    public GameObject Animate;
    public GameObject EndMenu;
    public AudioSource audioMain;
    bool EndMENU;

    void Start()
    {
        EndMENU = false;
    }

    void Ending()
    {
        Animate.SetActive(false);
        EndMenu.SetActive(true);
        EndMENU = true;

        if (EndMENU)
        {
            audioMain.Play();
        }
    }
}
