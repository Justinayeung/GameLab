using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class DirtPlayer : MonoBehaviour
{
    float speed = 10f;
    float belowSpeed = 4f;
    public int playerNum;
    public GameObject bulletSpawnPoint;
    public GameObject dirtWater;
    public Rigidbody bullet;
    public float bulletSpeed = 10f;
    public Image healthBar;
    public Material normalColor;
    public bool dirt_waterEmpty = true;
    public bool onGround = false;

    Color flickerColor = Color.red;
    int hit = 4;
    int timer;
    bool under = false;
    Renderer rend;
    Rigidbody rb;

    void Start()
    {
        dirtWater.SetActive(false);
        healthBar.fillAmount = 1.0f;
        rend = GetComponent<Renderer>();
        rb = GetComponent<Rigidbody>();
        rend.enabled = true;
    }

    void FixedUpdate()
    {
        //Moving using left joystick
        if (onGround)
        {
            float moveHorizontal = Input.GetAxis("Horizontal" + playerNum);
            float moveVertical = Input.GetAxis("Vertical" + playerNum);
            Vector3 moveAbove = new Vector3(moveHorizontal, 0, moveVertical);
            if (under)
            {
                rb.velocity = moveAbove * speed;
            }
            if (!under)
            {
                rb.velocity = moveAbove * belowSpeed;
            }
            transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(moveAbove), 0.15f);

            //If SP is pressed, then the player moves down 1 unit
            if (Input.GetButtonDown("SP" + playerNum))
            {
                under = !under;
            }
        }
        else
        {
            rb.AddForce(Vector3.down * 50f, ForceMode.Impulse);
        }
    }

    void Update()
    {
        //Bool for if dirtPlayer is under or not
        if (under)
        {
            rend.enabled = false;
        }
        else
        {
            rend.enabled = true;
        }

        timer++;
        if (timer >= 10f)
        {
            if (Input.GetButtonDown("Shoot" + playerNum))
            {
                Rigidbody clone_Dirt;
                clone_Dirt = Instantiate(bullet, bulletSpawnPoint.transform.position, transform.rotation);
                clone_Dirt.GetComponent<Rigidbody>().AddForce(transform.forward * bulletSpeed, ForceMode.Impulse);
                timer = 0;
            }
        }

        if (Input.GetButtonDown("Dash" + playerNum))
        {
            speed = 50f;
        }
        else
        {
            speed = 10f;
        }

        if (hit == 4)
        {
            healthBar.fillAmount = 1f;
        }
        else if (hit == 3)
        {
            healthBar.fillAmount = 0.75f;
        }
        else if (hit == 2)
        {
            healthBar.fillAmount = 0.5f;
        }
        else if (hit == 1)
        {
            healthBar.fillAmount = 0.25f;
        }
        else if (hit == 0)
        {
            healthBar.fillAmount = 0f;
        }
    }

    void OnCollisionEnter(Collision other)
    {
        if (other.gameObject.CompareTag("Ground"))
        {
            onGround = true;
        }
    }

    void OnCollisionExit(Collision other)
    {
        if (other.gameObject.CompareTag("Ground"))
        {
            onGround = false;
        }
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Bullet"))
        {
            hit -= 1;
            StartCoroutine(Flicker());
        }
    }

    IEnumerator Flicker()
    {
        rend.material.color = flickerColor;
        yield return new WaitForSeconds(0.05f);
        rend.material = normalColor;
    }
}
