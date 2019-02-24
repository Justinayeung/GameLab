using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using UnityEngine;

public class TriggerTextOasis : MonoBehaviour
{
    public Text Oasis;
    public Text underOasis;
    public Text underOasis1;
    public Text underOasis2;
    public Text underOasis3;
    public Text esc;
    public Text esc1;
    public Text esc2;
    public Text esc3;
    public Text esc4;
    public Text Forgive;
    public Text Reap;
    public AudioSource oasis;
    public AudioSource forgive;
    public AudioSource reap;
    public Image black;
    public TriggerTextMotel motel;
    public GameObject forgiveB; 
    public GameObject reapB;
    bool triggered = false;
    public Color startC;
    public Color endC;
    bool startColor = true;
    float duration = 2f;
    public Light toOasis;
    CursorLockMode wantedMode;
    bool PlayerReap = false;

    void Awake()
    {
        underOasis3.canvasRenderer.SetAlpha(0);
        underOasis2.canvasRenderer.SetAlpha(0);
        underOasis1.canvasRenderer.SetAlpha(0);
        underOasis.canvasRenderer.SetAlpha(0);
        Oasis.canvasRenderer.SetAlpha(0);
        Forgive.canvasRenderer.SetAlpha(0);
        esc.canvasRenderer.SetAlpha(0);
        esc1.canvasRenderer.SetAlpha(0);
        esc2.canvasRenderer.SetAlpha(0);
        esc3.canvasRenderer.SetAlpha(0);
        esc4.canvasRenderer.SetAlpha(0);
        Reap.canvasRenderer.SetAlpha(0);
        black.canvasRenderer.SetAlpha(0);
        forgiveB.SetActive(false);
        reapB.SetActive(false);
        Cursor.lockState = wantedMode;
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Player") && !triggered)
        {
            if (motel.motelOver)
            {
                StartCoroutine("fadeOasis");
                oasis.Play();
            }
            triggered = true;
        }
    }

    public void forgiveButton()
    {
        esc.CrossFadeAlpha(0, 0.5f, true);
        esc1.CrossFadeAlpha(0, 0.5f, true);
        esc2.CrossFadeAlpha(0, 0.5f, true);
        esc3.CrossFadeAlpha(0, 0.5f, true);
        esc4.CrossFadeAlpha(0, 0.5f, true);
        StartCoroutine("fadeForgive");
    }

    public void reapButton()
    {
        esc.CrossFadeAlpha(0, 0.5f, true);
        esc1.CrossFadeAlpha(0, 0.5f, true);
        esc2.CrossFadeAlpha(0, 0.5f, true);
        esc3.CrossFadeAlpha(0, 0.5f, true);
        esc4.CrossFadeAlpha(0, 0.5f, true);
        StartCoroutine("fadeReap");
    }

    IEnumerator fadeOasis()
    {
        Oasis.CrossFadeAlpha(1, 0.5f, true);   //To Solid
        underOasis.CrossFadeAlpha(1, 0.5f, true);
        underOasis1.CrossFadeAlpha(1, 0.5f, true);
        underOasis2.CrossFadeAlpha(1, 0.5f, true);
        underOasis3.CrossFadeAlpha(1, 0.5f, true);
        yield return new WaitForSeconds(13);
        if (startColor)
        {
            float t = Mathf.PingPong(Time.time, duration) / duration;
            toOasis.color = Color.Lerp(startC, endC, t);
            startColor = false;
        }
        Oasis.CrossFadeAlpha(0, 0.5f, true);   //To Alpha
        underOasis.CrossFadeAlpha(0, 0.5f, true);
        underOasis1.CrossFadeAlpha(0, 0.5f, true);
        underOasis2.CrossFadeAlpha(0, 0.5f, true);
        underOasis3.CrossFadeAlpha(0, 0.5f, true);
        yield return new WaitForSeconds(2);
        Cursor.visible = true;
        Cursor.lockState = wantedMode = CursorLockMode.None;
        esc.CrossFadeAlpha(1, 0.5f, true);
        esc1.CrossFadeAlpha(1, 0.5f, true);
        esc2.CrossFadeAlpha(1, 0.5f, true);
        esc3.CrossFadeAlpha(1, 0.5f, true);
        esc4.CrossFadeAlpha(1, 0.5f, true);
        reapB.SetActive(true);
        forgiveB.SetActive(true);
    }

    IEnumerator fadeReap()
    {
        reapB.SetActive(false);
        forgiveB.SetActive(false);
        PlayerReap = true;
        yield return new WaitForSeconds(3);
        black.CrossFadeAlpha(1, 2f, true);
        yield return new WaitForSeconds(3);
        Reap.CrossFadeAlpha(1, 0.5f, true);
        reap.Play();
        yield return new WaitForSeconds(11.5f);
        Reap.CrossFadeAlpha(0, 0.5f, true);
        yield return new WaitForSeconds(1);
        SceneManager.LoadScene("ExitGame");
    }

    IEnumerator fadeForgive()
    {
        reapB.SetActive(false);
        forgiveB.SetActive(false);
        black.CrossFadeAlpha(1, 2f, true);
        yield return new WaitForSeconds(3);
        Forgive.CrossFadeAlpha(1, 0.5f, true);
        forgive.Play();
        yield return new WaitForSeconds(12.5f);
        Forgive.CrossFadeAlpha(0, 0.5f, true);
        yield return new WaitForSeconds(1);
        SceneManager.LoadScene("ExitGame");
    }
}
