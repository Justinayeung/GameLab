using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlaceTrapMesh : MonoBehaviour
{
    public Renderer rend;
    void Start()
    {
        rend = GetComponent<Renderer>();
        rend.enabled = true;
    }

    IEnumerator Disappear()
    {
        yield return new WaitForSeconds(1.5f);
        rend.enabled = false;
    }
}
