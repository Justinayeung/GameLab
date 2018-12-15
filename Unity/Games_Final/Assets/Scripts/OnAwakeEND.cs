using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OnAwakeEND : MonoBehaviour
{
    public GameObject Animate;
    public GameObject EndMenu;

    void Start()
    {
        Animate.SetActive(true);
        EndMenu.SetActive(false);
    }
}
