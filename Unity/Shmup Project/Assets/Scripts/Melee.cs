using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Melee : MonoBehaviour
{
    CircleCollider2D cC;

    void Start()
    {
        cC = GetComponent<CircleCollider2D>();
    }

    void Update()
    {
        if (Input.GetButtonDown("Fire1") || Input.GetButtonDown("Fire2"))
        {
            StartCoroutine(radius());
        }
    }

    void OnTriggerEnter2D(Collider2D other)
    {
        if (other.CompareTag("Enemy"))
        {
            Destroy(other.gameObject);
        }
    }

    IEnumerator radius()
    {
        cC.radius = 5f;
        yield return new WaitForSeconds(1.5f);
        cC.radius = 1f;
    }
}
