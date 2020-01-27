using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Mover : MonoBehaviour
{
    public GameObject CanvasWon;
    public GameObject CanvasLost;
    public float speed = 1f;
    public Transform target;
    public AudioSource backgroundMusic;
    public GameObject lightWin;
    private SpriteRenderer monsterSprite;
    public Vector3 normalizeDirection;
    private float timeLeft = 10.0f;
    public bool villageDestroyed;

    void Start()
    {
        villageDestroyed = false;
        lightWin.SetActive(false);
        normalizeDirection = (target.position - transform.position).normalized;
        CanvasWon.SetActive(false);
        CanvasLost.SetActive(false);
        monsterSprite = GetComponent<SpriteRenderer>();
        monsterSprite.enabled = true;
    }

    void Update()
    {
        normalizeDirection = (target.position - transform.position).normalized;
        float dist = Vector3.Distance(target.position, transform.position);

        if (dist > 0.5f)
        {
            transform.position += normalizeDirection * speed * Time.deltaTime;
        }
        else if(dist < 0.5f)
        {
            speed = 0f;
            villageDestroyed = true;
        }

        timeLeft -= Time.deltaTime;

        if (timeLeft <= 0 && CanvasLost.activeInHierarchy == false)
        {
            backgroundMusic.Stop();
            speed = 0f;
            StartCoroutine(WinExplosion());
        }
        else if (villageDestroyed)
        {
            CanvasLost.SetActive(true);
            CanvasWon.SetActive(false);
        }
    }

    IEnumerator WinExplosion()
    {
        lightWin.SetActive(true);
        monsterSprite.enabled = false;
        yield return new WaitForSeconds(0.5f);
        CanvasWon.SetActive(true);
        CanvasLost.SetActive(false);
        yield return null;
    }
}
