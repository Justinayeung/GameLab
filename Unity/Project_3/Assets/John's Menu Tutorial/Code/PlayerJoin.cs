using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/*
For keyboard:
P1 is WASD and Z
P2 is Arrows and M
Space is start
 */

public class PlayerJoin : MonoBehaviour
{
    public GameObject CursorPerfab;
    public Color32[] cursorColors; // The colors for the player cursors
    public Transform[] icons; // The icons representing the characters
    private bool[] created;

    void Start()
    {
        // This checks if a player has spawned, and prevents multiple cursors being created by the same player
        created = new bool[] { false, false, false, false };
        PublicVars.characters = new int[] { -1, -1, -1, -1 }; // -1 means no player selected otherwise it is the joystick number
    }

    void Update()
    {
        for (int i = 0; i < icons.Length; i++)
        {
            if (Input.GetButtonDown("Select" + (i + 1)) && !created[i])
            {
                //if the player hits the jump button let them join the game by spwning a cursor
                GameObject newCursor = Instantiate(CursorPerfab) as GameObject;
                SelectMove sMove = newCursor.GetComponent<SelectMove>(); //get a reference to the SelectMove script
                sMove.playerNum = i + 1; //assign a player number
                sMove.icons = icons; // give the new cursor a referance to the icon locations
                newCursor.GetComponent<SpriteRenderer>().color = cursorColors[i]; // set the cursor color
                created[i] = true; // mark that the cursor was created
            }

        }
    }
}
