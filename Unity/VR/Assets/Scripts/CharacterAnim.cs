using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterAnim : MonoBehaviour
{
    public Animator characterAnim;
    public AudioSource noise;
    bool arm = false;
    bool leg = false;
    bool face = false;

    void Update()
    {
        if (arm && leg && face)
        {
            noise.Play();
            characterAnim.SetTrigger("anim");
        }
    }

    void OnTriggerStay(Collider other)
    {
        if (other.gameObject.CompareTag("Arm"))
        {
            arm = true;
        }

        if (other.gameObject.CompareTag("Leg"))
        {
            leg = true;
        }

        if (other.gameObject.CompareTag("Face"))
        {
            face = true;
        }
    }
}
