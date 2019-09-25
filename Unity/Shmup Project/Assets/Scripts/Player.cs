using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour
{
    private Rigidbody2D rb;
    public float speed;
    public float rotationSpeed;
    public GameObject spawnPoint;

    public Rigidbody2D bullet;
    public float bulletSpeed;
    private float timer;

    public Camera MainCam;
    private Vector2 screenBounds;
    private float objectWidth;
    private float objectHeight;

    void Start()
    {
        screenBounds = MainCam.ScreenToWorldPoint(new Vector3(Screen.width, Screen.height, MainCam.transform.position.z));
        objectWidth = transform.GetComponent<SpriteRenderer>().bounds.extents.x;
        objectHeight = transform.GetComponent<SpriteRenderer>().bounds.extents.y;
        rb = GetComponent<Rigidbody2D>();
        timer = 0;
    }

    void FixedUpdate()
    {
        float moveHorizontal = Input.GetAxisRaw("Horizontal");
        float moveVertical = Input.GetAxisRaw("Vertical");
        float HR = Input.GetAxis("JoyX");
        rb.velocity = new Vector2(moveHorizontal * speed, moveVertical * speed);
        transform.Rotate(0, 0, HR * rotationSpeed * Time.deltaTime);
    }

     void Update()
    {
        timer++;
        //if (shootDirection, sqr.Magnitude > 0.01f);
        if (Input.GetButtonDown("Horizontal2") || Input.GetButton("Fire1") & timer > 5)
        {
            Rigidbody2D clone;
            clone = Instantiate(bullet, spawnPoint.transform.position, transform.rotation);
            clone.GetComponent<Rigidbody2D>().AddForce(transform.up * bulletSpeed * 2);
            timer = 0;
        }
    }

    void LateUpdate()
    {
        Vector3 viewPos = transform.position;
        viewPos.x = Mathf.Clamp(viewPos.x, screenBounds.x + objectWidth, screenBounds.x * -1 - objectWidth);
        viewPos.y = Mathf.Clamp(viewPos.y, screenBounds.y + objectHeight, screenBounds.y * -1 - objectHeight);
        transform.position = viewPos;
    }
}
