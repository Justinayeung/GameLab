using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialogueTrigger : MonoBehaviour
{
    public Dialogue dialogue1;
    public Dialogue dialogue2;
    public DialogueManager dialogueStart;
    public AudioSource radioStatic;
    public Light point;
    public Light spot;
    public Light spotBomb;
    bool once = false;
    public bool second = true;
    bool exit;
    bool exit2;

    void Start()
    {
        point.enabled = false;
        spot.enabled = false;
        spotBomb.enabled = false;
    }

    void OnTriggerEnter(Collider other)
    {
        if (!once)
        {
            if (other.CompareTag("Player"))
            {
                dialogueStart.StartDialogue(dialogue1);
            }
            once = true;
            exit = true;
            exit2 = false;
        }

        if (!second)
        {
            if (other.CompareTag("Player"))
            {
                dialogueStart.StartDialogue(dialogue2);
            }
            exit = false;
            exit2 = true;
            second = true;
        }

    }

    void OnTriggerExit(Collider other)
    {
        if (exit)
        {
            if (other.CompareTag("Player"))
            {
                second = false;
                bool oncePlay = false;
                if (!oncePlay)
                {
                    radioStatic.Play();
                    point.enabled = true;
                    spot.enabled = true;
                    oncePlay = true;
                }
            }
        }

        if (exit2)
        {
            spotBomb.enabled = true;
        }
    }
}
