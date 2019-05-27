//   https://developer.oculus.com/documentation/unity/latest/concepts/unity-ovrinput/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestInput : MonoBehaviour
{
    string outText = "";
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        outText = "";
        

        //Buttons
        // returns true if the “B” button was released this frame.
        if(OVRInput.GetUp(OVRInput.RawButton.B)){
            outText+="B up, ";
        }

        if(OVRInput.Get(OVRInput.RawButton.B)){
            outText+="B Pressed, ";
        }

        if(OVRInput.GetDown(OVRInput.RawButton.B)){
            outText+="B Down, ";
        }
        
        if(OVRInput.Get(OVRInput.Touch.Two)){
            outText+="Secondary touch, ";
        }


        // returns true if the secondary gamepad button, typically “B”, is currently touched by the user.
        if(OVRInput.Get(OVRInput.Touch.One)){
            outText+= "Primary Touch, ";
        }

        // returns true if the primary button (typically “A”) is currently pressed.
        if(OVRInput.Get(OVRInput.Button.One)){
            outText+="Primary Pressed, ";
        }

        // returns true if the primary button (typically “A”) was pressed this frame.
        if(OVRInput.GetDown(OVRInput.Button.One)){
            outText+="primary Down, ";
        }



        //Triggers
        //returns true if the left index finger trigger has been pressed more than halfway.
        if(OVRInput.Get(OVRInput.RawButton.LIndexTrigger)){
            outText+= "Left Trigger Pess, ";
        }

        // returns a float of the left index finger trigger’s current state.
        // (range of 0.0f to 1.0f)
        if(OVRInput.Get(OVRInput.RawAxis1D.LIndexTrigger) != 0){
            outText+= "L trigger:" +  OVRInput.Get(OVRInput.RawAxis1D.LIndexTrigger) + ", ";
        }
    
        //float for primary hand trigger
        if(OVRInput.Get(OVRInput.Axis1D.PrimaryHandTrigger, OVRInput.Controller.Touch) != 0){
            outText+= "Primary hand trigger "+OVRInput.Get(OVRInput.Axis1D.PrimaryHandTrigger, OVRInput.Controller.Touch) + ", ";
        }
    


        //Thumbsticks
        // returns true if the primary thumbstick is currently pressed (clicked as a button)
        if(OVRInput.Get(OVRInput.Button.PrimaryThumbstick)){
            outText+="Primary Stick Clicked, ";
        }

        if(OVRInput.Get(OVRInput.Touch.PrimaryThumbstick)){
            outText+="Primary Stick Touched, ";
        }

        // returns a Vector2 of the primary (typically the Left) thumbstick’s current state.
        // (X/Y range of -1.0f to 1.0f)
        if(OVRInput.Get(OVRInput.Axis2D.PrimaryThumbstick)!=Vector2.zero){
            outText+= "Pimary Horiz and Vert:" +  OVRInput.Get(OVRInput.Axis2D.PrimaryThumbstick) + ", ";
        }

        // returns a float of the secondary (typically the Right) index finger trigger’s current state.
        // (range of 0.0f to 1.0f)
        if(OVRInput.Get(OVRInput.Axis1D.SecondaryIndexTrigger) != 0){
            outText+= "Secondary Vert:" +  OVRInput.Get(OVRInput.Axis1D.SecondaryIndexTrigger) + ", ";
        }

        

        //Positions



        print(outText);

    }
}
