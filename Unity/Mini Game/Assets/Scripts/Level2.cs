using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class Level2 : MonoBehaviour
{
    public Text nextLevel;

	// Use this for initialization
	void Start ()
    {
        //Invoke after 5 seconds
        Invoke("DisableText", 1.5f);
	}

    void DisableText()
    {
        nextLevel.enabled = false;
    }
}
