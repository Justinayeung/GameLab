using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class TriggerEnd : MonoBehaviour
{
    public Image black;
    public GameObject RumpelWins;
    public GameObject MarieWins;
    public GameObject RumpelObject;
    public GameObject MarieObject;
    public GameObject choiceCanvas;
    public GameObject timeCanvas;
    public AudioSource explosions1;
    public AudioSource explosions2;
    public AudioSource explosions3;
    public AudioSource explosions4;
    public GameObject gun;
    public Light dark1;
    public Light dark2;
    public Light turnoff;
    public GameObject player;
    public Transform newPosition;
    public Animator circleAnim;
    public GameObject gem;
    public GameObject particle;
    public AudioSource bad;
    public AudioSource good;
    public AudioSource tension;
    public AudioSource heartbeat;

    void Start()
    {
        black.canvasRenderer.SetAlpha(0);
        RumpelWins.SetActive(false);
        MarieWins.SetActive(false);
        dark1.enabled = false;
        dark2.enabled = false;
        particle.SetActive(false);
    }

    void OnCollisionEnter(Collision other)
    {
        if (other.gameObject.CompareTag("Rumpel"))
        {
            tension.Stop();
            heartbeat.Stop();
            StartCoroutine(RumpelDies());
        }

        if (other.gameObject.CompareTag("Marie"))
        {
            tension.Stop();
            heartbeat.Stop();
            StartCoroutine(MarieDies());
        }
    }

    IEnumerator MarieDies()
    {
        black.CrossFadeAlpha(1, 1f, true);
        bad.Play();
        yield return new WaitForSeconds(0.5f);
        explosions1.Play();
        yield return new WaitForSeconds(0.2f);
        explosions2.Play();
        choiceCanvas.SetActive(false);
        timeCanvas.SetActive(false);
        yield return new WaitForSeconds(0.2f);
        player.transform.position = newPosition.position;
        RumpelObject.SetActive(false);
        MarieObject.SetActive(false);
        RumpelWins.SetActive(true);
        explosions3.Play();
        turnoff.enabled = false;
        dark1.enabled = true;
        dark2.enabled = true;
        gun.SetActive(false);
        yield return new WaitForSeconds(0.2f);
        explosions4.Play();
        yield return new WaitForSeconds(1.5f);
        black.CrossFadeAlpha(0, 1f, true);
        yield return new WaitForSeconds(5f);
        bad.volume--;
        black.CrossFadeAlpha(1, 1f, true);
    }

    IEnumerator RumpelDies()
    {
        black.CrossFadeAlpha(1, 1f, true);
        good.Play();
        yield return new WaitForSeconds(0.5f);
        timeCanvas.SetActive(false);
        player.transform.position = newPosition.position;
        choiceCanvas.SetActive(false);
        RumpelObject.SetActive(false);
        MarieObject.SetActive(false);
        MarieWins.SetActive(true);
        gun.SetActive(false);
        turnoff.enabled = false;
        yield return new WaitForSeconds(0.5f);
        black.CrossFadeAlpha(0, 1f, true);
        yield return new WaitForSeconds(4f);
        circleAnim.SetBool("circle", true);
        yield return new WaitForSeconds(1.3f);
        gem.SetActive(false);
        particle.SetActive(true);
        yield return new WaitForSeconds(2f);
        particle.SetActive(false);
        yield return new WaitForSeconds(3f);
        good.volume--;
        black.CrossFadeAlpha(1, 1f, true);
    }
}
