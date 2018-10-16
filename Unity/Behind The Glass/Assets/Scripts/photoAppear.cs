using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class photoAppear : MonoBehaviour {

    public Image customImage;


     void Start()
    {


    }
    void DisableImage()
    {
        customImage.enabled = false;
    }

    void Update()
    {
        if (Input.GetKey(KeyCode.E))
        {
            customImage.enabled = true;
            Invoke("DisableImage", 2f);
        }





    }    
}
