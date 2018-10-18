using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CoroutineExample : MonoBehaviour
{
    void Start()
    {
        StartCoroutine("myCoroutine");
    }

    IEnumerator myCoroutine()
    {
        //Do something, wait 2 seconds and do another thing - Pause and come back
        yield return new WaitForSeconds(2);

        //Pops you out of coroutine - Leave
        yield return null;
    }
}
