using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Hive : MonoBehaviour
{
    public SpriteRenderer hiveSprite = null;
    public Color flickerColor = Color.white;
    private Color startingColor = Color.clear;
    public GameObject hiveParticles;
    public Color[] hitColor;

    private int hit = 0;

    void Start()
    {
        startingColor = hiveSprite.color;
    }

    void OnTriggerEnter2D(Collider2D other)
    {
        if(other.CompareTag("Enemy"))
        {
            StartCoroutine(Flicker());
            hit += 1;
            checkHit();
        }
    }

    IEnumerator Flicker()
    {
        hiveSprite.color = flickerColor;
        yield return new WaitForSeconds(.05f);
        hiveSprite.color = hitColor[hit];
    }

    void checkHit()
    {
        if (hit == 5)
        {
            Destroy(gameObject);
            Instantiate(hiveParticles, transform.position, Quaternion.identity);
        }
    }
}
