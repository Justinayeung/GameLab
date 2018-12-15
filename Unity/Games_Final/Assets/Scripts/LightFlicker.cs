using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LightFlicker : MonoBehaviour
{
    public Light warning;

    IEnumerator Flash()
    {
        warning.enabled = true;
        yield return new WaitForSeconds(0.5f);
        warning.enabled = false;
        yield return null;
    }
}
