using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using UnityEngine;

public class PlayerMove : MonoBehaviour
{
    //Playernum 1 = Clunk
    //Playernum 2 = Click

    Rigidbody2D rb;
    public int speed = 10;
    public int jumpForce = 500;
    public LayerMask groundLayer;
    public Transform feet;
    public bool canJump;
    public int playerNum;
    public bool died;
    private GameMaster gm;
    public Image black;

    public Animator animClunk;
    public SpriteRenderer srClunk;
    public Animator animClick;
    public SpriteRenderer srClick;

    public Grabbing grab;
    public GameObject rock;
    public GameObject cam;
    public GameObject maincam;
    private GameObject[] playerArray;
    public GameObject flashlight;

    //public AudioSource[] sounds;
    //public AudioSource nightwake;
    //public AudioSource aperture;
    //public AudioSource blindsummit;

    void Start()
    {
        gm = GameObject.FindGameObjectWithTag("GM").GetComponent<GameMaster>();
        rb = GetComponent<Rigidbody2D>();
        playerArray = GameObject.FindGameObjectsWithTag("Player");

        //sounds = GetComponents<AudioSource>();
        //nightwake = sounds[0];
        //aperture = sounds[1];
        //blindsummit = sounds[2];

    }

    void Update()
    {
        canJump = Physics2D.OverlapCircle(feet.position, 0.5f, groundLayer);
        //Vector3 pos = Camera.main.WorldToViewportPoint(transform.position);
        //pos.x = Mathf.Clamp01(pos.x);
        //transform.position = Camera.main.ViewportToWorldPoint(pos);

        //if (Input.GetAxis("Horizontal" + playerNum) * rb.velocity.x >= 0)
        //{
        //    if (playerNum == 1)
        //    {
        //        animClunk.SetBool("isRunningRight", true);
        //    }

        //    if (playerNum == 2)
        //    {
        //        animClick.SetBool("isRunningRight", true);
        //    }
        //}
        //else if (Input.GetAxis("Hoizontal" + playerNum) * rb.velocity.x <= 0)
        //{
        //    if (playerNum == 1)
        //    {
        //        animClunk.SetBool("isRunningRight", false);
        //    }

        //    if (playerNum == 2)
        //    {
        //        animClick.SetBool("isRunningRight", false);
        //    }
        //}

        //if (Input.GetKeyDown(KeyCode.E))
        //{
        //    animClunk.SetBool("Punch", true);
        //}
        //else
        //{
        //    animClunk.SetBool("Punch", false);
        //}
    }

    //private void flip() {
    //    transform.localScale = new Vector3(-transform.localScale.x, transform.localScale.y, transform.localScale.z);
    //}

    //void camStay()
    //{
    //    Vector3 pos = Camera.main.WorldToViewportPoint(transform.position);
    //    pos.x = Mathf.Clamp01(pos.x);
    //    transform.position = Camera.main.ViewportToWorldPoint(pos);
    //}

    void FixedUpdate()
    {
        float xSpeed = Input.GetAxis("Horizontal" + playerNum) * speed;
        rb.velocity = new Vector2(xSpeed, rb.velocity.y);

        if (Input.GetKeyDown(KeyCode.E))
        {
            animClunk.SetBool("Punch", true);
        }
        else
        {
            animClunk.SetBool("Punch", false);
        }

        if (xSpeed > 0)
        {
            if (playerNum == 1)
            {
                animClunk.SetFloat("Speed", Mathf.Abs(xSpeed));
            }
            if (playerNum == 2)
            {
                animClick.SetFloat("Speed", Mathf.Abs(xSpeed));
                flashlight.transform.localRotation = Quaternion.Euler(0, 0, 0);
                flashlight.transform.localPosition = new Vector3(14.8f, 0.4f, 0);
            }
            srClick.flipX = false;
            srClunk.flipX = false;
        }
        else if (xSpeed < 0)
        {
            if (playerNum == 1)
            {
                animClunk.SetFloat("Speed", Mathf.Abs(xSpeed));
            }
            if (playerNum == 2)
            {
                animClick.SetFloat("Speed", Mathf.Abs(xSpeed));
                flashlight.transform.localPosition = new Vector2(-14.8f, 0.4f);
                flashlight.transform.localRotation = Quaternion.Euler(0, 180, 0);
            }
            srClick.flipX = true;
            srClunk.flipX = true;
        }

        if (Input.GetButtonDown("Jump" + playerNum) && canJump)
        {
            rb.velocity = new Vector2(rb.velocity.x, 0);
            //With add force you adding something, when in velocity you set something which is why x = 0 instead of rb.velocity.x
            rb.AddForce(new Vector2(0, jumpForce));
            if (playerNum == 1)
            {
                animClunk.SetBool("isJumping", true);
                animClunk.SetFloat("Speed", Mathf.Abs(xSpeed));

            }
            
            if(playerNum == 2)
            {
                animClick.SetBool("isJumping", true);
                animClick.SetFloat("Speed", Mathf.Abs(xSpeed));
            }
        }
        else
        {
            animClick.SetBool("isJumping", false);
            animClunk.SetBool("isJumping", false);
        }
    }

    void OnTriggerEnter2D(Collider2D other)
    {
        if (other.gameObject.CompareTag("Enemy"))
        {
            StartCoroutine(fadeIN());
        }

        //if (other.gameObject.CompareTag("nightwake"))
        //{
        //    nightwake.Play();
            

        //}

        //if (other.gameObject.CompareTag("aperture"))
        //{
        //    aperture.Play();
        //    nightwake.Stop();
        //}

        //if (other.gameObject.CompareTag("blindsummit"))
        //{
        //    blindsummit.Play();
        //    aperture.Stop();
        //}
    }

    void OnCollisionEnter2D(Collision2D other)
    {
        if (other.gameObject.CompareTag("Enemy"))
        {
            StartCoroutine(fadeIN());
        }
    }

    //IEnumerator players()
    //{
    //    //if (playerNum == 1)
    //    //{
    //    //    transform.position = gm.lastCheckPointPos;
    //    //}
    //    //yield return new WaitForSeconds(0.5f);
    //    //if (playerNum == 2)
    //    //{
    //    //    transform.position = gm.lastCheckPointPos;
    //    //}

    //    for (int i = 0; i < playerArray.Length; i++)
    //    {

    //    }
    //}

    IEnumerator fadeIN()
    {
        black.CrossFadeAlpha(1, 1f, true);
        yield return new WaitForSeconds(1f);
        //SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
        playerArray[0].transform.position = gm.lastCheckPointPos + new Vector2(-1, 0);
        playerArray[1].transform.position = gm.lastCheckPointPos + new Vector2(1, 0);
        maincam.SetActive(true);
        cam.SetActive(false);
        rock.transform.position = new Vector2(99.5f, -8.3f);
        yield return new WaitForSeconds(1f);
        black.CrossFadeAlpha(0, 1f, true);
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
