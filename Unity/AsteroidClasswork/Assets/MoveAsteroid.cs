using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MoveAsteroid : MonoBehaviour
{
    float posX, posZ;
    public float speed;
    public float hp;

	void Start ()
    {
        posX = Random.Range(-37, 37);
        posZ = Random.Range(-17, 17);

        transform.position = new Vector3(posX, 0, posZ);

        Vector3 euler = transform.eulerAngles;
        euler.y = Random.Range(0f, 360f);
        transform.eulerAngles = euler;

        hp = Random.Range(1, 4);
        transform.localScale = new Vector3(hp*2, hp*2, hp*2);
	}
	
	void Update ()
    {
        transform.Translate(Vector3.forward * Time.deltaTime * speed);
        speed = 5 - hp;
        ScreenWrap();
	}

    void ScreenWrap()
    {
        if (transform.position.x < -37)
        {
            transform.position = new Vector3(36, transform.position.y, transform.position.z);
        }

        if (transform.position.x > 37)
        {
            transform.position = new Vector3(-36, transform.position.y, transform.position.z);
        }

        if (transform.position.z < -17)
        {
            transform.position = new Vector3(transform.position.x, transform.position.y, 16);
        }

        if (transform.position.z > 17)
        {
            transform.position = new Vector3(transform.position.x, transform.position.y, -16);
        }
    }
}
