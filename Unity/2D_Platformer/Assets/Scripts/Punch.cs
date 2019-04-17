using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Punch : MonoBehaviour
{
    public CapsuleCollider2D fist;

    void Start()
    {
        fist.enabled = false;
    }

    //void Update()
    //{
    //    if (Input.GetKeyDown(KeyCode.E))
    //    {
    //        StartCoroutine(punch());
    //    }
    //    else
    //    {
    //        fist.enabled = false;
    //    }
    //}

    IEnumerator punch()
    {
        yield return new WaitForSeconds(0.2f);
        fist.enabled = true;
        yield return new WaitForSeconds(0.5f);
        fist.enabled = false;
    }
}
