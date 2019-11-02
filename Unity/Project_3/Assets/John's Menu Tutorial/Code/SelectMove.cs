using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

/*
For keyboard:
P1 is WASD and Z
P2 is Arrows and M
Space is start
*/

public class SelectMove : MonoBehaviour
{
    [HideInInspector]
    public Transform[] icons; //set by playerJoin
    [HideInInspector]
    public int playerNum; //set by playerJoin
    int iLength;
    private int index = 0;
    private bool canMove = true;
    private bool selected = false;
    private string horizontal;
    public Text playerName;
    private AudioSource sound;
    public AudioClip onClick;

    public static bool pollutedLevel;
    public static bool waterLevel;
    public static bool droughtLevel;

    void Start()
    {
        sound = GetComponent<AudioSource>();
        horizontal = "Horizontal" + playerNum; // Saves a reference to the input string (for optimization)
        iLength = icons.Length; // saves a reference to the array length for readability 
        index = playerNum - 1; // convert player num to array position (arrays start at 0 but our joysticks start at 1)
        transform.position = icons[index].position; // set the cursor to a default starting position based index
        playerName.text = "P" + playerNum; // Give the player cursor a label
    }
    void Update()
    {
        MoveCursor();
        SelectCharacter();
        StartCheck();
    }

    void MoveCursor()
    {
        if (canMove)
        {
            if (Input.GetAxisRaw(horizontal) > 0)
            {
                index = (index + 1) % iLength; // the mod function lets us loop without an if statement
            }
            else if (Input.GetAxisRaw(horizontal) < 0)
            {
                index = (index - 1 + iLength) % iLength;  //((x-1) + k) % k  reverse overflow
            }

            transform.position = icons[index].position; // place the cursor at its new position based on the icons position
            canMove = false; //briefly stop the cursor from moving while joystic is pressed
        }
        if (Input.GetAxisRaw(horizontal) == 0 && !selected)
        {
            canMove = true; // let the cursor move again when no imput is detected.
            // This makes selection easier for the user.
        }
    }

    void SelectCharacter()
    {
        if (Input.GetButtonDown("Select" + playerNum))
        {
            if (selected) //if the player is already selected then deselect it
            {
                PublicVars.characters[index] = -1; //remove the player number and reset the array to -1
                icons[index].gameObject.GetComponent<SpriteRenderer>().color = Color.white; //change color back to normal
                selected = false; // set selected to false
            }
            else if (PublicVars.characters[index] != -1)
            {
                //this player has already been selected
                //TODO: have an error sound play
                print("already taken");
            }
            else // select this character
            {
                PublicVars.characters[index] = playerNum; // update the array with your controller number
                icons[index].gameObject.GetComponent<SpriteRenderer>().color = Color.gray; // change the icon color
                selected = true; // set selected bool to true
                canMove = false; // prevent movement 
                //TODO: have an select sound play
                sound.PlayOneShot(onClick);
                print("player" + playerNum + " is " + index);
            }
        }
    }

    void StartCheck() //deturmines if the game should start
    {
        int playerCount = 0;
        for (int i = 0; i < PublicVars.characters.Length; i++)
        {
            if (PublicVars.characters[i] != -1)
            {
                playerCount++; // this counts how many players have selected characters
            }
        }
        //if at least 2 players are selected and the start button is hit then start the game
        //otherwise do nothing - Not enough players
        //if all 4 players are selected, start the game automatically
        if (playerCount > 3)
        {
            if (Level_MenuButton.pollutedLevel)
            {
                SceneManager.LoadScene("Polluted_Arena");
                Level_MenuButton.pollutedLevel = false;
            }
            else if (Level_MenuButton.waterLevel)
            {
                SceneManager.LoadScene("Water_Arena");
                Level_MenuButton.waterLevel = false;
            }
            else if (Level_MenuButton.droughtLevel)
            {
                SceneManager.LoadScene("Drought_Arena");
                Level_MenuButton.droughtLevel = false;
            }
        }
    }
}
