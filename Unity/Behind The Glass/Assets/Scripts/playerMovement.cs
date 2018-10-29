using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using UnityEngine;

public class playerMovement1 : MonoBehaviour
{
    public float speed;
    Rigidbody2D rb;
    SpriteRenderer sr;
    public Sprite left, right, up, down;

    public Text countText;
    public Text photo;
    private int count1;
    public GameObject SetPhoto;

    void Start()
    {
        rb = GetComponent<Rigidbody2D>();
        sr = GetComponent<SpriteRenderer>();
        count1 = 0;
        photo.text = " ";
        SetCountText();
    }

    void Update()
    {
        if (Input.GetKey(KeyCode.W) || Input.GetKey(KeyCode.UpArrow))
        {
            rb.transform.position +=  Vector3.up * speed * Time.deltaTime;
            sr.sprite = up;
        }
        if (Input.GetKey(KeyCode.S) || Input.GetKey(KeyCode.DownArrow))
        {
            rb.transform.position += Vector3.down * speed * Time.deltaTime;
            sr.sprite = down;

        }
        if (Input.GetKey(KeyCode.A) || Input.GetKey(KeyCode.LeftArrow))
        {
            rb.transform.position += Vector3.left * speed * Time.deltaTime;
            sr.sprite = left ;

        }
        if (Input.GetKey(KeyCode.D) || Input.GetKey(KeyCode.RightArrow))
        {
            rb.transform.position += Vector3.right * speed * Time.deltaTime;
            sr.sprite = right;

        }
    }

    void OnTriggerEnter2D(Collider2D other)
    {
        if (other.gameObject.CompareTag("Pick Up"))
        {
            other.gameObject.SetActive(false);
            count1 = count1 + 1;
            SetCountText();
            SetPhotoText();
        }
    }

    void SetCountText()
    {
        countText.text = count1.ToString() + "/7 Photos Collected";
        if (count1 == 7)
        {
            SceneManager.LoadScene("EndingDialogue");
        }
    }

    void SetPhotoText()
    {
        SetPhoto.SetActive(true);
        photo.text = "You took a photo";
        StartCoroutine("ShowHideButton");
    }

    IEnumerator ShowHideButton()
    {
        yield return new WaitForSeconds(1);
        SetPhoto.SetActive(false);
        yield return null;
    }
}