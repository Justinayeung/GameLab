using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using UnityEngine;

public class PlayerMove : MonoBehaviour
{
    Rigidbody2D rb;
    public int speed = 10;
    public int jumpForce1 = 500;
    public int jumpForce2 = 500;
    public LayerMask groundLayer;
    public Transform feet;
    public bool canJump;
    public int playerNum;

    private GameMaster gm;
    bool dead;
    public Image black;

    void Start()
    {
        dead = false;
        gm = GameObject.FindGameObjectWithTag("GM").GetComponent<GameMaster>();
        rb = GetComponent<Rigidbody2D>();
        transform.position = gm.lastCheckPointPos;
    }

    void Update()
    {
        canJump = Physics2D.OverlapCircle(feet.position, 0.5f, groundLayer);
        Vector3 pos = Camera.main.WorldToViewportPoint(transform.position);
        pos.x = Mathf.Clamp01(pos.x);
        transform.position = Camera.main.ViewportToWorldPoint(pos);
        if (dead)
        {
            StartCoroutine(fadeIN());
        }
    }

    void FixedUpdate()
    {
        float xSpeed = Input.GetAxis("Horizontal" + playerNum) * speed;
        rb.velocity = new Vector2(xSpeed, rb.velocity.y);

        if (Input.GetButtonDown("Jump" + playerNum) && canJump)
        {
            rb.velocity = new Vector2(rb.velocity.x, 0);
            //With add force you adding something, when in velocity you set something which is why x = 0 instead of rb.velocity.x
            rb.AddForce(new Vector2(0, jumpForce2));
            Debug.Log("Jump");
        }

        if (Input.GetButtonDown("Jump" + playerNum) && canJump)
        {
            rb.velocity = new Vector2(rb.velocity.x, 0);
            //With add force you adding something, when in velocity you set something which is why x = 0 instead of rb.velocity.x
            rb.AddForce(new Vector2(0, jumpForce1));
            Debug.Log("Jump");
        }
    }

    void OnTriggerEnter2D(Collider2D other)
    {
        if (other.gameObject.CompareTag("Enemy"))
        {
            dead = true;
        }
    }

    IEnumerator fadeIN()
    {
        black.CrossFadeAlpha(1, 1f, true);
        yield return new WaitForSeconds(1f);
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
        black.canvasRenderer.SetAlpha(1);
    }

    /*
    Sprite editor multiple, slice and edit the cuts (make sure to leave space)
    Idle animation (default) for character = animation and animator window
        Select multiple sprites and drag it into the animator (Make sure it's in the correct order - you can edit this in the animator)
        Parameter = Speed
            From idle to run uncheck take out exit time
            For parameter check it to be > or < a number (+/-)

    In SCRIPT
    To flip sprite there is a flip option

    private Animator anim;
    private SpriteRenderer sr;

    anim = GetComponent<Animator>();
    sr = GetComponent<SpriteRenderer>();

    anim.SetFloat("Speed', Mathf.Abs(xSpeed));
    if(xSpeed > 0)
    {
        sr.flipX = true;
    }
    else if(xSpeed < 0)
    {
        sr.flipX = false;
    }

     */
}
