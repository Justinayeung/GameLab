using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterCollideScript : MonoBehaviour
{
    void Start()
    {
        
    }

    void Update()
    {
        
    }

    void OnCollisionEnter(Collision other)
    {
        if (other.gameObject.CompareTag("Cube"))
        {
            //Debug.Log(other.gameObject.name);
            other.gameObject.transform.localScale = new Vector3(1, 6, 1);
            other.gameObject.GetComponent<AudioSource>().Play();
        }
    }

    void OnCollisionExit(Collision other)
    {
        if (other.gameObject.CompareTag("Cube"))
        {
            //Debug.Log(other.gameObject.name);
            other.gameObject.transform.localScale = new Vector3(1, 1, 1);
        }
    }
}
