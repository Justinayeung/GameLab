using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RockAnim : MonoBehaviour
{
    public GameObject rock;
    public GameObject rockAnim;

    void OnTriggerEnter2D(Collider2D other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            rock.SetActive(false);
            rockAnim.SetActive(true);
        }
    }
}
