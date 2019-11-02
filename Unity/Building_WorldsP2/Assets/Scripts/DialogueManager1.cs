using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class DialogueManager1 : MonoBehaviour
{
    public Text nameText;
    public Text dialogueText;

    private Queue<string> sentences;

    void Start()
    {
        sentences = new Queue<string>();
    }

    public void StartDialogue(Dialogue dialogue)
    {
        //anim.SetBool("IsOpen", true);
        nameText.text = dialogue.name;
        sentences.Clear();

        foreach (string sentence in dialogue.sentences)
        {
            Debug.Log("Start");
            sentences.Enqueue(sentence);
        }

        DisplayNextSentence();
    }

    void Update()
    {
        DisplayNextSentence();
    }

    public void DisplayNextSentence()
    {
        if (Input.GetKeyDown("space"))
        {
            if (sentences.Count == 0)
            {
                Debug.Log("ENDING");
                EndDialogue();
                return;
            }

            string sentence = sentences.Dequeue();
            StopAllCoroutines();
            StartCoroutine(TypeSentence(sentence));
        }
    }

    IEnumerator TypeSentence(string sentence)
    {
        dialogueText.text = "";
        //ToCharArray will convert each string into a character array
        foreach (char letter in sentence.ToCharArray())
        {
            dialogueText.text += letter;
            yield return null;
        }
    }

    void EndDialogue()
    {
        sentences.Clear();
    }
}
