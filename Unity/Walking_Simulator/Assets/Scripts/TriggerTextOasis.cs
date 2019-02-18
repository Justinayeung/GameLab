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
    public Text Forgive;
    public Text Reap;
    public AudioSource oasis;
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

    void Awake()
    {
        underOasis3.canvasRenderer.SetAlpha(0);
        underOasis2.canvasRenderer.SetAlpha(0);
        underOasis1.canvasRenderer.SetAlpha(0);
        underOasis.canvasRenderer.SetAlpha(0);
        Oasis.canvasRenderer.SetAlpha(0);
        Forgive.canvasRenderer.SetAlpha(0);
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
        StartCoroutine("fadeForgive");
    }

    public void reapButton()
    {
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
        reapB.SetActive(true);
        forgiveB.SetActive(true);
    }

    IEnumerator fadeReap()
    {
        reapB.SetActive(false);
        forgiveB.SetActive(false);
        black.CrossFadeAlpha(1, 2f, true);
        yield return new WaitForSeconds(3);
        Reap.CrossFadeAlpha(1, 0.5f, true);
        yield return new WaitForSeconds(18);
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
        yield return new WaitForSeconds(18);
        Forgive.CrossFadeAlpha(0, 0.5f, true);
        yield return new WaitForSeconds(1);
        SceneManager.LoadScene("ExitGame");
    }
}
