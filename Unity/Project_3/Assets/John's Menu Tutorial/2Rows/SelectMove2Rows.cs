using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SelectMove2Rows : MonoBehaviour
{
    public int playerNum;
    public Transform[] row1;
    public Transform[] row2;
    Transform[][] rows;
    private int xIndex = 0;
    private int yIndex = 0;
    private bool canMove = true;
    private bool selected = false;
    void Start()
    {
        PublicVars.characters = new int[] { -1, -1, -1, -1 };
        rows = new Transform[][] { row1, row2 };

        xIndex = playerNum - 1;
        if (xIndex > row1.Length - 1)
        {
            xIndex -= row1.Length;
            yIndex++;
        }
        transform.position = rows[yIndex][xIndex].position;
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
            if (Input.GetAxisRaw("Horizontal" + playerNum) > 0)
            {
                xIndex = (xIndex + 1) % 2;  //rows[yIndex].Length;
            }
            else if (Input.GetAxisRaw("Horizontal" + playerNum) < 0)
            {
                //((x-1) + k) % k  reverse overflow
                xIndex = (xIndex - 1 + 2) % 2; //rows[yIndex].Length;
            }
            else if (Input.GetAxisRaw("Vertical" + playerNum) > 0)
            {
                yIndex++;
                if (yIndex > rows[xIndex].Length - 1)
                {
                    yIndex = 0;
                }
            }
            else if (Input.GetAxisRaw("Vertical" + playerNum) < 0)
            {
                yIndex--;
                if (yIndex < 0)
                {
                    yIndex = rows[xIndex].Length - 1;
                }
            }
            transform.position = rows[yIndex][xIndex].position;
            canMove = false;
        }
        if (Input.GetAxisRaw("Horizontal" + playerNum) == 0 && Input.GetAxisRaw("Vertical" + playerNum) == 0 && !selected)
        {
            canMove = true;
        }
    }

    void SelectCharacter()
    {
        if (Input.GetButtonDown("Jump" + playerNum))
        {
            int index = xIndex + (yIndex * rows[xIndex].Length);

            if (selected)
            {
                PublicVars.characters[index] = -1;
                rows[yIndex][xIndex].gameObject.GetComponent<SpriteRenderer>().color = Color.white;
                selected = false;

            }
            else if (PublicVars.characters[index] != -1)
            {
                //error sound
                print("already taken");
            }
            else
            {
                PublicVars.characters[index] = playerNum;
                rows[yIndex][xIndex].gameObject.GetComponent<SpriteRenderer>().color = Color.gray;
                print("player" + playerNum + " is " + index);
                selected = true;
                canMove = false;
                //select sound
            }
        }
    }

    void StartCheck()
    {
        int playerCount = 0;
        for (int i = 0; i < PublicVars.characters.Length; i++)
        {
            if (PublicVars.characters[i] != -1)
            {
                playerCount++;
            }
        }

        if (playerCount > 3 || (Input.GetButtonDown("Submit") && playerCount > 1))
        {
            SceneManager.LoadScene("Level1");
        }
    }
}
