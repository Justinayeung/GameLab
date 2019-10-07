using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    public float speed = 10.0f;
    private float moveFwd;
    private float moveSide;

    // Use this for initialization
    void Start()
    {
        // turn off the cursor
        //cursor.lockstate = cursorlockmode.locked;
        //Cursor.visible = false;
    }

    // Update is called once per frame
    void Update()
    {
        moveFwd = Input.GetAxis("Vertical") * speed * Time.deltaTime;
        moveSide = Input.GetAxis("Horizontal") * speed * Time.deltaTime;
        transform.Translate(moveSide, 0, moveFwd);

        //if (Input.GetKeyDown("escape"))
        //{
        //    // turn on the cursor
        //    Cursor.lockState = CursorLockMode.None;
        //}
    }
}