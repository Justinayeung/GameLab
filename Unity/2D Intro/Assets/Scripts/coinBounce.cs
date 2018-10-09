using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class coinBounce : MonoBehaviour
{
    float speed = 5f;
    float height = 0.75f;
    public float posX;
	
	// Update is called once per frame
	void Update ()
    {
        transform.Rotate(0, 0, Time.deltaTime * 100);
        Vector2 pos = transform.position;
        float newY = Mathf.Sin(Time.time * speed);
        transform.position = new Vector2(posX, newY) * height;
	}
}
