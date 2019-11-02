using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class DialogueTrigger1 : MonoBehaviour
{
    public Dialogue dialogue1;
    public DialogueManager1 dialogueStart;
    public AudioSource radioStatic;
    public AudioSource heartbeat;
    public AudioSource tension;
    public GameObject timerUI;
    public Text timerText;
    bool once = false;
    float currentTime = 0f;

    void Start()
    {
        timerUI.SetActive(false);
    }

    void Update()
    {
        currentTime -= 1 * Time.deltaTime;
        timerText.text = "TIMER: " + currentTime.ToString("0");

        if(currentTime <= 0)
        {
            currentTime = 0;
        }
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            dialogueStart.StartDialogue(dialogue1);
        }
    }

    void OnTriggerExit(Collider other)
    {
        if (!once)
        {
            radioStatic.Stop();
            StartCoroutine(MusicTimer());
            timerUI.SetActive(true);
            currentTime = 60;
        }
    }

    IEnumerator MusicTimer()
    {
        yield return new WaitForSeconds(1f);
        heartbeat.Play();
        yield return new WaitForSeconds(10f);
        tension.Play();
    }
}
