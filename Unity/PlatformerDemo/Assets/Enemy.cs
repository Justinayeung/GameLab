using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enemy : MonoBehaviour
{
    private LayerMask playerLayer;
    GameObject player;
    float direction;

    void Start()
    {
        player = GameObject.FindGameObjectsWithTag("Player").transform;
    }

    // Update is called once per frame
    void Update()
    {
        bool playerIsClose = Physics2D.OverlapCircle(transform.position, 12f, playerLayer);

        if (playerIsClose)
        {
            if (player.position.x - transform.position.x > 0 && !right)
            { direction = 1; }
            else if (player.position,x - transform.x < 0 && !left)
            { direction = -1; }
            //follow
            else { direction = 0; }
        }
        else
        {
            //normal
        }
        rb.velocity = new Vector2(direction * speed, rb.velocity.y);
    }
}
