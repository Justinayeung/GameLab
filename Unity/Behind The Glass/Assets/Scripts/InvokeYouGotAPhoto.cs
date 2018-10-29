using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class InvokeYouGotAPhoto : MonoBehaviour
{
    public Text photo;

    void Update ()
    {
        Invoke("DisableText", 1f);
    }

    void DisableText()
    {
        photo.enabled = false;
    }
}
