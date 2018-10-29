using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BoundaryToDialogue : MonoBehaviour
{

    public Image  dialogueBox;


  
    void DisableImage()
    {
        dialogueBox.enabled = false;
        Invoke("DisableImage", 2f);


    }
     void OnTriggerEnter2D (Collider2D collision)
    {
        Debug.Log(collision.gameObject.tag);
        if (collision.gameObject.tag=="Player")
        {
           dialogueBox.gameObject.SetActive(true);
        }
    }

     void OnTriggerExit2D (Collider2D collision)
    {
        if (collision.gameObject.tag == ("Player"))
        {
           dialogueBox.gameObject.SetActive(false);
        }
    }







}
