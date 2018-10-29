using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DialogueManager : MonoBehaviour {

    public GameObject dBox;
    public Text dText;

    public bool dialogueActive;
    
    // Use this for initialization
	void Start () {
		
	}
   
	
	// Update is called once per frame
	

    public void showBox(string dialogue)
    {
        dialogueActive = true;
        dBox.SetActive(true);
        dText.text = dialogue;
    }

     void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            dialogueActive = false;
            dBox.SetActive(false);

        }
    }

    void DisableImage()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            dialogueActive = false;
            dBox.SetActive(false);

        }
    }
}
