using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScissorController : MonoBehaviour
{
    public Animator anim;
    public GameObject snapScissor;

    // Update is called once per frame
    void Update()
    {
        
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Scissor"))
        {
            anim.SetTrigger("Cutting");
            snapScissor.SetActive(false);
        }
    }
}
