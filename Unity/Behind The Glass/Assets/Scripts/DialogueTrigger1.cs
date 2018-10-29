using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialogueTrigger1 : MonoBehaviour
{
    public Dialogue dialogue;

    public void TriggerDialogue()
    {
        FindObjectOfType<DialogueController1>().StartDialogue(dialogue);
    }
}
