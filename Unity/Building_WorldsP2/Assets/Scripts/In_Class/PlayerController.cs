using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour {
    public float speed = 10.0f;
    private float moveFwd;
    private float moveSide;

    public float minX = -60f;
    public float maxX = 60f;
    public float minY = -360f;
    public float maxY = 360f;

    public float sensitivityX = 15f;
    public float sensitivityY = 15f;
    public Camera cam;
    float rotationY = 0f;
    float rotationX = 0f;

    Rigidbody rb;

    void Start()
    {
        Cursor.visible = false;
        rb = GetComponent<Rigidbody>();
    }

    void Update()
    {
        rotationY += Input.GetAxis("Mouse X") * sensitivityY;
        rotationX += Input.GetAxis("Mouse Y") * sensitivityX;
        rotationX = Mathf.Clamp(rotationX, minX, maxX);
        transform.localEulerAngles = new Vector3(0, rotationY, 0);
        cam.transform.localEulerAngles = new Vector3(-rotationX, rotationY, 0);
    }

    void FixedUpdate()
    {
        moveFwd = Input.GetAxis("Vertical") * speed * Time.deltaTime;
        moveSide = Input.GetAxis("Horizontal") * speed * Time.deltaTime;

        Vector3 targetDirection = new Vector3(moveSide, 0, moveFwd);
        targetDirection = Camera.main.transform.TransformDirection(targetDirection);
        targetDirection.y = 0.0f;
        rb.MovePosition(transform.position + targetDirection);
    }
}