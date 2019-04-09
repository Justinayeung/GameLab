using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RockScript : MonoBehaviour
{
    public LayerMask layer;

    void OnCollisionEnter2D(Collision2D other)
    {
        if((layer.value & 1<<other.gameObject.layer) == 1<<other.gameObject.layer)
        {
            GetComponent<Rigidbody2D>().isKinematic = true;
            GetComponent<Rigidbody2D>().velocity = new Vector2(0, 0);
        }
    }
}
