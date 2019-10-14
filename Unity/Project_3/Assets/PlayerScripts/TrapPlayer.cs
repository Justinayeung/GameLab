using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class TrapPlayer : MonoBehaviour
{
    float speed = 10f;
    public int playerNum;
    public GameObject bulletSpawnPoint;
    public GameObject trapWater;
    public Rigidbody bullet;
    public float bulletSpeed = 10f;
    public Image healthBar;
    public Material normalColor;
    public bool trap_waterEmpty = true;
    public bool onGround = false;

    Color flickerColor = Color.red;
    int hit = 4;
    int timer;
    Renderer rend;
    Rigidbody rb;

    void Start()
    {
        trapWater.SetActive(false);
        healthBar.fillAmount = 1.0f;
        rb = GetComponent<Rigidbody>();
        rend = GetComponent<Renderer>();
        rend.enabled = true;
    }

    void FixedUpdate()
    {
        //Moving using left joystick
        if (onGround)
        {
            float moveHorizontal = Input.GetAxis("Horizontal" + playerNum);
            float moveVertical = Input.GetAxis("Vertical" + playerNum);

            Vector3 move = new Vector3(moveHorizontal, 0, moveVertical);
            rb.velocity = move * speed;
            transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(move), 0.15f);
        }
        else
        {
            rb.AddForce(Vector3.down * 50f, ForceMode.Impulse);
        }
    }

    void Update()
    {
        timer++;
        if (timer >= 10f)
        {
            if (Input.GetButtonDown("Shoot" + playerNum))
            {
                Rigidbody clone_Trap;
                clone_Trap = Instantiate(bullet, bulletSpawnPoint.transform.position, transform.rotation);
                clone_Trap.GetComponent<Rigidbody>().AddForce(transform.forward * bulletSpeed, ForceMode.Impulse);
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
