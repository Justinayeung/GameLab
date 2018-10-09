using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using UnityEngine;

public class BallControl : MonoBehaviour
{
    SpriteRenderer sr;
    bool controllBool = true;

    private Rigidbody2D rb;
    private int score1;
    private int score2;

    public Text scoreText1;
    public Text scoreText2;
    public Text winText1;
    public Text winText2;
    public float speed = 100f;

    public EndMenu endMenu;

    public Sprite Right;
    public Sprite Left;

    //Custom function that chooses a random direction, then make the ball start to move
    void GoBall()
    {
        if (controllBool == true)
        {
            float rand = Random.Range(0, 4);
            if (rand > 1)
            {
                rb.AddForce(new Vector2(20, -15));
                sr.sprite = Right;
            }
            else
            {
                rb.AddForce(new Vector2(-20, -15));
                sr.sprite = Left;
            }
        }
    }

    void Start()
    {
        sr = GetComponent<SpriteRenderer>();
        rb = GetComponent<Rigidbody2D>();
        //Allows a wait time before execution

        score1 = 0;
        SetScoreText1();
        winText1.text = "";

        score2 = 0;
        SetScoreText2();
        winText2.text = "";

        Invoke("GoBall", 2);

    }

    //Used when win condition is meat
    //Stops ball and resets its position
    void ResetBall()
    {
        rb.velocity = new Vector2(0, 0) * speed;
        transform.position = Vector2.zero;
    }

    //Waits until collision with paddle, then adjusts the velocity appropriately using both the speed of the ball and the paddle
    void OnCollisionEnter2D(Collision2D coll)
    {
        if (coll.collider.CompareTag("Player1"))
        {
            Vector2 vel;
            vel.x = rb.velocity.x;
            vel.y = (rb.velocity.y / 2.0f) + (coll.collider.attachedRigidbody.velocity.y / 3.0f);
            rb.velocity = vel;
            sr.sprite = Right;
        }

        if (coll.collider.CompareTag("Player2"))
        {
            Vector2 vel;
            vel.x = rb.velocity.x;
            vel.y = (rb.velocity.y / 2.0f) + (coll.collider.attachedRigidbody.velocity.y / 3.0f);
            rb.velocity = vel;
            sr.sprite = Left;
        }

        if (coll.collider.CompareTag("RightWall"))
        {
            ResetBall();
            Invoke("GoBall", 1);
        }

        if (coll.collider.CompareTag("LeftWall"))
        {
            ResetBall();
            Invoke("GoBall", 1);
        }

        if (coll.gameObject.CompareTag("RightWall"))
        {
            score1 = score1 + 1;
            SetScoreText1();
        }

        if (coll.gameObject.CompareTag("LeftWall"))
        {
            score2 = score2 + 1;
            SetScoreText2();
        }
    }

    void SetScoreText1()
    {
        scoreText1.text = score1.ToString();
        if (score1 >= 3)
        {
            winText1.text = "PLAYER ONE WINS";
            controllBool = false;
            endMenu.ToggleEndMenu();
            //SceneManager.LoadScene("Restart");
        }
    }

    void SetScoreText2()
    {
        scoreText2.text = score2.ToString();
        if (score2 >= 3)
        {
            winText2.text = "PLAYER TWO WINS";
            controllBool = false;
            endMenu.ToggleEndMenu();
            //SceneManager.LoadScene("Restart");
        }
    }
}
