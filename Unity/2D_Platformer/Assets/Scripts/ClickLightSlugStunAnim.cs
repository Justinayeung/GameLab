using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class ClickLightSlugStunAnim : MonoBehaviour
{
    public Image black;
    public Image anim;
    public GameObject mainCam;
    public GameObject camAnim;
    public GameObject mainClunk;
    public GameObject mainClick;
    public GameObject animObjects;
    public GameObject clickAnim;
    public GameObject animStun;
    public GameObject flashLight;
    public GameObject slug;
    public GameObject slugAnim;
    public AudioSource aperture;

    void Start()
    {
        camAnim.SetActive(false);
        animObjects.SetActive(false);
        animStun.SetActive(true);
        slug.SetActive(false);
        slugAnim.SetActive(false);
        clickAnim.SetActive(false);

    }

    void OnTriggerEnter2D(Collider2D other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            StartCoroutine(slugStun());
        }
    }

    IEnumerator slugStun()
    {
        black.CrossFadeAlpha(1, 0.5f, true);
        aperture.volume = 0.3f;
        yield return new WaitForSeconds(1f);
        mainClunk.SetActive(false);
        mainClick.SetActive(false);
        animObjects.SetActive(true);
        slugAnim.SetActive(true);
        camAnim.SetActive(true);
        mainCam.SetActive(false);
        clickAnim.SetActive(true);
        yield return new WaitForSeconds(1f);
        anim.CrossFadeAlpha(0.5f, 0.5f, true);
        black.CrossFadeAlpha(0, 0.5f, true);
        yield return new WaitForSeconds(2f);
        StartCoroutine(flashLight.GetComponent<FlashLightANim>().flashLight());
        yield return new WaitForSeconds(2f);
        anim.CrossFadeAlpha(0, 0.5f, true);
        black.CrossFadeAlpha(1, 0.5f, true);
        yield return new WaitForSeconds(0.5f);
        mainCam.SetActive(true);
        camAnim.SetActive(false);
        animObjects.SetActive(false);
        slugAnim.SetActive(false);
        slug.SetActive(true);
        mainClick.SetActive(true);
        mainClunk.SetActive(true);
        yield return new WaitForSeconds(0.5f);
        aperture.volume = 0.5f;
        black.CrossFadeAlpha(0, 0.5f, true);
        animStun.SetActive(false);
    }
}
