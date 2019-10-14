using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Shake_Fall : MonoBehaviour
{
    Vector3 startingPos;
    float opacity;
    Renderer rend;

    void Awake()
    {
        rend = GetComponent<Renderer>();
        startingPos.x = transform.position.x;
        startingPos.y = transform.position.y;
        startingPos.z = transform.position.z;
    }

    void Update()
    {
        StartCoroutine(ShakeFall());
    }

    IEnumerator ShakeFall()
    {
        //startingPos + Mathf...(... * shake speed) * amount shake
        float shakeX = startingPos.x + Mathf.Cos(Time.time * 15f) * 0.2f;
        float posY = startingPos.y + Mathf.Cos(Time.time * 10f) * 0.1f;
        float shakeZ = startingPos.z + Mathf.Sin(Time.time * 15f) * 0.2f;
        transform.position = new Vector3(shakeX, posY, shakeZ);
        yield return new WaitForSeconds(2f);
        shakeX = 0f;
        shakeZ = 0f;
        posY = startingPos.y -= 5f * Time.deltaTime;
    }
}
