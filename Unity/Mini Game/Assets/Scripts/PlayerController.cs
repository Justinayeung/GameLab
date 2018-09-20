using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI; //Must have this if you want to have text

public class PlayerController : MonoBehaviour
{
    //Defining variables
    private float speed = 5f;
    private CharacterController controller;
    private Vector3 moveVector;
    private float verticalVelocity = 0.0f;
    private float gravity = 12.0f;

    private Rigidbody rb;

    public Text gameoverText;
    public Text countText;
    private int count;

    void Start()
    {
        rb = GetComponent<Rigidbody>();
        controller = GetComponent<CharacterController>();
        count = 0;
        SetCountText();
        gameoverText.text = " ";

    }

    private void FixedUpdate()
    {
        rb.AddForce(new Vector3(0f, 0f, speed) * Time.deltaTime * speed, ForceMode.Acceleration);
    }

    void Update()
    {
        moveVector = Vector3.zero;

        if (controller.isGrounded)
        {
            verticalVelocity = -0.5f;
        }
        else
        {
            verticalVelocity -= gravity * Time.deltaTime;
        }

        //X = left and right
        moveVector.x = Input.GetAxis("Horizontal") * speed;

        //Y = up and down
        moveVector.y = verticalVelocity;

        //Z = forward and backwards
        moveVector.z = speed;

        controller.Move((moveVector * speed) * Time.deltaTime);
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
    }

    void SetCountText ()
    {
        countText.text = "Count:" + count.ToString() + PlayerPrefs.GetFloat("Count");
    }

    private void OnControllerColliderHit(ControllerColliderHit hit)
    {
        if (hit.collider.tag == "Lethal")
        {
            Destroy(gameObject);
            gameoverText.text = "Game Over";
            PlayerPrefs.SetFloat("Count", count);
        }

    }
}
