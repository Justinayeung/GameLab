using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class Mover : MonoBehaviour
{
    private Rigidbody2D rb;
    public float speed;
    public float up;

    public Text scoreText;
    public Text gameOver;
    public int score;

    public GameOver GameOver;

    void Start()
    {
        rb = GetComponent<Rigidbody2D>();
        score = 0;
        SetScoreText();
        gameOver.text = "";
    }

    void Update()
    {
        rb.AddForce(Vector2.right * speed * Time.deltaTime);

        if (Input.GetKeyDown(KeyCode.Space))
        {
            rb.AddForce(Vector2.up * up, ForceMode2D.Impulse);
        }
    }

    void OnCollisionEnter2D(Collision2D other)
    {
        if (other.gameObject.CompareTag("Ground"))
        {
            gameOver.text = "Game Over";
            GameOver.ToggleGameOver();
            speed = 0;
            up = 0;
        }

        if (other.gameObject.CompareTag("Kelp"))
        {
            gameOver.text = "Game Over";
            GameOver.ToggleGameOver();
            speed = 0;
            up = 0;
        }
    }

    void OnTriggerEnter2D(Collider2D other)
    {
        if (other.gameObject.CompareTag("Wall"))
        {
            other.gameObject.SetActive(false);
            score = score + 1;
            SetScoreText();
        }
    }

    void SetScoreText()
    {
        scoreText.text = score.ToString();
    }
}
