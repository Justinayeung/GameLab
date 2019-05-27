using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestPosition : MonoBehaviour
{
    public OVRInput.Controller controller = OVRInput.Controller.LTouch;
    void Start()
    {
        
    }

    
    void Update()
    {
        //OVRInput.FixedUpdate();
        transform.position = OVRInput.GetLocalControllerPosition(controller);
        transform.rotation = OVRInput.GetLocalControllerRotation(controller);
    }
}
