using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMove : MonoBehaviour
{
    public int playerNum;
    private int speed = 10;
    private Rigidbody2D rb;

    void Awake()
    {
        print(playerNum + ", " + PublicVars.characters[playerNum - 1]);
        //update the player number to they joystic number saved in the array
        playerNum = PublicVars.characters[playerNum - 1];
        if (playerNum == -1)
        {
            Destroy(gameObject); // Destroy any characters that were not picked and are not in the game
        }

    }
    void Start()
    {
        rb = GetComponent<Rigidbody2D>();
    }

    void Update()
    {
        //simple playermove script
        float xSpeed = Input.GetAxis("Horizontal" + playerNum) * speed;
        float ySpeed = Input.GetAxis("Vertical" + playerNum) * speed;
        rb.velocity = new Vector2(xSpeed, ySpeed);
    }
}
