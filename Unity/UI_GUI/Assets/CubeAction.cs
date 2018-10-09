using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CubeAction : MonoBehaviour
{
    public Slider slidey;
    public Text winText;

	// Use this for initialization
	void Start ()
    {
        winText.text = "";
	}
	
	// Update is called once per frame
	void Update ()
    {
		
	}

    void OnMouseDown()
    {
        //change UI
        float value = slidey.value;
        slidey.value = value + 1;
        Destroy(this.gameObject);

        //change winText

        if (slidey.value == 5)
        {
                winText.text = "YOU WIN!";
        }
    }
}
