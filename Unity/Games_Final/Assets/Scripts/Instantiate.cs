using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Instantiate : MonoBehaviour
{
    public GameObject crumbs;

    void Update()
    {
        if(Input.GetKeyDown(KeyCode.K))
        {
            Instantiate(crumbs, transform.position + transform.forward, transform.rotation);
            StartCoroutine("waitTime");
        }
    }

    IEnumerator waitTime()
    {
        yield return new WaitForSeconds(2);
        yield return null;
    }
}
