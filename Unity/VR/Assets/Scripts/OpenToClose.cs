using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OpenToClose : MonoBehaviour
{
    public GameObject openToclose;
    public GameObject openToclose1;
    public GameObject closeToopen;
    public GameObject closeToopen1;

    void open()
    {
        openToclose.SetActive(false);
        openToclose1.SetActive(false);
        closeToopen.SetActive(true);
        closeToopen1.SetActive(true);
    }
}
