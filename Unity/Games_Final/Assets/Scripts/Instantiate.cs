using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Instantiate : MonoBehaviour
{
    public GameObject crumbs;
    public bool wait;

    public LoadCrumb loading;

    void Start()
    {
        wait = true;
    }

    void Update()
    {
        if(Input.GetKeyDown(KeyCode.L) && wait)
        {
            wait = false;
            StartCoroutine("waitTime");
            Instantiate(crumbs, transform.position + transform.forward, transform.rotation);
        }
    }

    IEnumerator waitTime()
    {
        wait = false;
        loading.currentAmount = 0;
        yield return new WaitForSeconds(5);
        wait = true;
        yield return null;
    }
}
