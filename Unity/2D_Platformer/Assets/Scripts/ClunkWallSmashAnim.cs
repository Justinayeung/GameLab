using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class ClunkWallSmashAnim : MonoBehaviour
{
    public Animator clunk;
    public GameObject camMain;
    public GameObject camWallHit;
    public GameObject wallhitChararcters;
    public GameObject mainClick;
    public GameObject mainClunk;
    public Image black;
    public Image anim;
    public GameObject hitAnim;
    public GameObject wall;
    public GameObject clunkHit;
    public GameObject clunkStill;
    public GameObject particles;
    public GameObject largeArea;
    public AudioSource nightwake;
    public GameObject colliders;

    void Start()
    {
        clunkStill.SetActive(false);
        hitAnim.SetActive(true);
        camWallHit.SetActive(false);
        wallhitChararcters.SetActive(false);
        particles.SetActive(false);
    }

    void OnTriggerEnter2D(Collider2D other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            StartCoroutine(wallHit());
        }
    }

    IEnumerator wallHit()
    {
        black.CrossFadeAlpha(1, 0.5f, true);
        nightwake.volume = 0.3f;
        yield return new WaitForSeconds(0.5f);
        largeArea.SetActive(false);
        mainClunk.transform.position = new Vector2(328, 18.5f);
        mainClick.transform.position = new Vector2(323, 18);
        yield return new WaitForSeconds(0.5f);
        mainClick.SetActive(false);
        mainClunk.SetActive(false);
        camMain.SetActive(false);
        camWallHit.SetActive(true);
        wallhitChararcters.SetActive(true);
        yield return new WaitForSeconds(1f);
        anim.CrossFadeAlpha(0.5f, 0.5f, true);
        black.CrossFadeAlpha(0, 0.5f, true);
        yield return new WaitForSeconds(1f);
        clunk.SetTrigger("hit");
        yield return new WaitForSeconds(3);
        clunkHit.SetActive(false);
        clunkStill.SetActive(true);
        particles.SetActive(true);
        yield return new WaitForSeconds(1f);
        anim.CrossFadeAlpha(0, 0.5f, true);
        black.CrossFadeAlpha(1, 0.5f, true);
        yield return new WaitForSeconds(0.5f);
        particles.SetActive(false);
        camMain.SetActive(true);
        colliders.SetActive(true);
        camWallHit.SetActive(false);
        wallhitChararcters.SetActive(false);
        mainClick.SetActive(true);
        mainClunk.SetActive(true);
        yield return new WaitForSeconds(0.5f);
        nightwake.volume = 0.5f;
        black.CrossFadeAlpha(0, 0.5f, true);
        hitAnim.SetActive(false);
    }
}
