using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class KnockBegin : MonoBehaviour
{
    public AudioSource knocking;

    void knock()
    {
        knocking.Play();
    }
}
