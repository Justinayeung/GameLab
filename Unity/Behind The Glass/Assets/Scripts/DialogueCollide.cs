using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialogueCollide : MonoBehaviour
{
    private bool isShown = false;
    public DialogueTrigger1 Trigger;
    public GameObject Dialogue;

    void Start()
    {
        Dialogue.SetActive(false);
    }

    void Update()
    {
        if (isShown)
        {
            return;
        }
    }

    private void OnTriggerEnter2D(Collider2D other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            Dialogue.SetActive(true);
            isShown = true;
            Trigger.TriggerDialogue();
        }
    }

    public void Continue()
    {
        Dialogue.SetActive(false);
    }
}
