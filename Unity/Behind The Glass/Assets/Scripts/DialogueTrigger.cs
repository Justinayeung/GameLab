using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialogueTrigger2 : MonoBehaviour
{
    public Dialogue dialogue;
    AudioSource ring;

    public void TriggerDialogue()
    {
        FindObjectOfType<DialogueController2>().StartDialogue(dialogue);

        FindObjectOfType<AudioManager>().stopAudio();
    }
}
