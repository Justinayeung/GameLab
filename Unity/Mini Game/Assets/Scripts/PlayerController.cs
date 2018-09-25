using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI; //Must have this if you want to have text

public class PlayerController : MonoBehaviour
{
    //Defining variables
    private float speed = 4f;
    private float maxSpeed = 10f;
    public float accelerationTime = 60;
    private float minSpeed;
    private float time;

    private CharacterController controller;
    private Vector3 moveVector;
    private float gravity = 30.0f;

    public Text gameoverText;
    public Text countText;
    public int count;

    public float threshold;

    public float jumpSpeed = 8.0f;

    public DeathMenu deathMenu;

    void Start()
    {
        controller = GetComponent<CharacterController>();
        count = 0;
        SetCountText();
        gameoverText.text = " ";
        minSpeed = speed;
        time = 0;
    }


    void Update()
    {
        moveVector = Vector3.zero;

        if (controller.isGrounded)
        {
            moveVector = new Vector3(Input.GetAxis("Horizontal"), 0.0f, Input.GetAxis("Vertical"));
            moveVector *= speed;

            if (Input.GetButton("Jump"))
            {
                moveVector.y = jumpSpeed * speed;
            }
        }
        else
        {
            moveVector.y -= gravity * speed * Time.deltaTime;
        }

        //X = left and right
        moveVector.x = Input.GetAxis("Horizontal") * speed;

        //Z = forward and backwards
        moveVector.z = speed;

        controller.Move((moveVector * speed) * Time.deltaTime);

        speed = Mathf.SmoothStep(minSpeed, maxSpeed, time / accelerationTime);
        time += Time.deltaTime;

        if (transform.position.y < threshold)
        {
            Destroy(gameObject);
            deathMenu.ToggleEndMenu();
        }
    }

    void OnTriggerEnter(Collider other)
    {
        //When it hits pick up objects
        if (other.gameObject.CompareTag("Score"))
        {
            other.gameObject.SetActive(false);
            count = count + 1;  //Value of pick up objects
            SetCountText();     //Allows for pick up objects to be counted
        }

        //When it hits pick up objects
        if (other.gameObject.CompareTag("Pick Up"))
        {
            other.gameObject.SetActive(false);
            count = count + 4;  //Value of pick up objects
            SetCountText();     //Allows for pick up objects to be counted
        }
    }

    void SetCountText ()
    {
        countText.text = "Score: " + count.ToString();
    }

    private void OnControllerColliderHit(ControllerColliderHit hit)
    {
        if (hit.collider.tag == "Lethal")
        {
            Destroy(gameObject);
            gameoverText.text = "Game Over";
            deathMenu.ToggleEndMenu();
        }
    }
}
