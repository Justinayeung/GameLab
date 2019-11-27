using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlaneOff : MonoBehaviour
{
    public void ObjectSpawned()
    {
        this.gameObject.SetActive(false);
    }
}
