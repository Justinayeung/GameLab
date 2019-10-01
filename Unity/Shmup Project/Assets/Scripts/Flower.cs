using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Flower : MonoBehaviour
{
    public SpriteRenderer sr;
    public float speed;
    byte alpha;

    void Start()
    {
        Destroy(gameObject, 8f);
        alpha = 255;
    }

    // Update is called once per frame
    void Update()
    {
        Quaternion rot = transform.rotation;
        float z = rot.eulerAngles.z;
        z -= speed * Time.deltaTime;
        rot = Quaternion.Euler(0, 0, z);
        transform.rotation = rot;

        sr.color = new Color32(255, 130, 255, alpha);
        alpha--;
    }
}
