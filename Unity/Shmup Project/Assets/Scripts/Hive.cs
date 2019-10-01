using System.Collections;
using System.Collections.Generic;
using UnityEngine.Rendering.PostProcessing;
using UnityEngine;

public class Hive : MonoBehaviour
{
    public SpriteRenderer hiveSprite = null;
    public Color flickerColor = Color.white;
    private Color startingColor = Color.clear;
    public Color[] hitColor;
    public PostProcessVolume activeVolume;
    public int hit = 0;

    public Sprite[] hives;
    public Player nT;
    public bool homing = false;
    public GameObject pointer;
    public Rigidbody2D army;
    public float armySpeed;
    public GameObject spawnPoint;
    GameObject player;

    Enemy enemy;
    Enemy1 enemy1;
    Enemy2 enemy2;
    Enemy3 enemy3;
    
    public bool shot;

    void Start()
    {
        player = GameObject.FindGameObjectWithTag("Player");
        pointer = GameObject.FindGameObjectWithTag("Homing");
        pointer.SetActive(false);
        startingColor = hiveSprite.color;
    }

    void Update()
    {
        Vignette vig;
        activeVolume.profile.TryGetSettings(out vig);
        if (hit == 1)
        {
            vig.intensity.value = 0.25f;
        }
        else if (hit == 2)
        {
            vig.intensity.value = 0.35f;
        }
        else if (hit == 3)
        {
            vig.intensity.value = 0.45f;
        }
        else if (hit == 4)
        {
            vig.intensity.value = 0.53f;
        }

        hiveSprite.color = hitColor[hit];
        hiveSprite.sprite = hives[nT.nectarCollect];
        checkHive6();
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
        if (hit >= 5)
        {
            Destroy(gameObject);
        }
    }

    void checkHive6()
    {
        ChromaticAberration chrome;
        activeVolume.profile.TryGetSettings(out chrome);
        if (nT.nectarCollect >= 6)
        {
            pointer.SetActive(true);
            homing = true;
            StartCoroutine(intensityDown());
        }
        else
        {
            homing = false;
            chrome.intensity.value = 0f;
            pointer.SetActive(false);
        }
    }

    IEnumerator intensityDown()
    {
        ChromaticAberration chrome;
        activeVolume.profile.TryGetSettings(out chrome);
        chrome.intensity.value = 1f;
        yield return new WaitForSeconds(2.5f);
        chrome.intensity.value = 0.9f;
        yield return new WaitForSeconds(0.5f);
        chrome.intensity.value = 0.8f;
        yield return new WaitForSeconds(0.5f);
        chrome.intensity.value = 0.7f;
        yield return new WaitForSeconds(0.5f);
        chrome.intensity.value = 0.6f;
        yield return new WaitForSeconds(0.5f);
        chrome.intensity.value = 0.5f;
        yield return new WaitForSeconds(0.5f);
        chrome.intensity.value = 0.4f;
        yield return new WaitForSeconds(0.1f);
        chrome.intensity.value = 0.3f;
        yield return new WaitForSeconds(0.1f);
        chrome.intensity.value = 0.2f;
        yield return new WaitForSeconds(0.1f);
        chrome.intensity.value = 0.1f;
        yield return new WaitForSeconds(0.1f);
        chrome.intensity.value = 0f;

        if (chrome.intensity.value == 0f)
        {
            nT.nectarCollect = 0;
            pointer.SetActive(false);
            shot = false;
            yield return new WaitForSeconds(0.1f);
            homing = false;
        }
    }
}
