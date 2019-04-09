using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using UnityEngine;

public class OnLevelLoad : MonoBehaviour
{
    public Image black;

    public GameObject introAnim;
    public GameObject introCam1;
    public GameObject introCam2;
    public Animator anim1;
    public Animator anim2;
    public Animator anim3;
    public Animator anim4;
    public Animator anim5;
    public Animator anim6;
    public Animator anim7;
    public Animator anim8;
    public Animator anim9;
    public Animator anim10;
    public Animator anim11;
    public Animator anim12;
    public Animator anim13;
    public Animator anim14;
    public Animator anim15;
    public Animator anim16;
    public Animator introANIM;
    public Animator introANIM1;
    public Animator cam;
    public Image blackfade;
    public GameObject click;
    public GameObject clunk;
    bool introFinished = false;

    void Awake()
    {
        black.canvasRenderer.SetAlpha(1);
        blackfade.canvasRenderer.SetAlpha(0);
    }

    void OnEnable()
    {
        SceneManager.sceneLoaded += OnSceneLoaded;
    }

    void OnSceneLoaded(Scene Cave, LoadSceneMode mode)
    {
        if (introFinished == false)
        {
            click.SetActive(false);
            clunk.SetActive(false);
            introCam1.SetActive(true);
            introCam2.SetActive(false);
            StartCoroutine(fadeIn());
            introFinished = true;
        }
    }

    void OnDisable()
    {
        SceneManager.sceneLoaded -= OnSceneLoaded;
    }

    public IEnumerator fadeIn()
    {
        black.CrossFadeAlpha(0, 1f, true);
        yield return new WaitForSeconds(1f);
        introANIM.SetTrigger("Start");
        introANIM1.SetTrigger("Start");
        black.canvasRenderer.SetAlpha(0);
        yield return new WaitForSeconds(0.5f);
        StartCoroutine(intro());
    }

    IEnumerator intro()
    {
        cam.SetTrigger("Cam");
        yield return new WaitForSeconds(1f);
        anim1.SetTrigger("Rock");
        anim2.SetTrigger("Rock");
        anim3.SetTrigger("Rock");
        anim4.SetTrigger("Rock");
        anim5.SetTrigger("Rock");
        anim6.SetTrigger("Rock");
        anim7.SetTrigger("Rock");
        anim8.SetTrigger("Rock");
        anim9.SetTrigger("Rock");
        anim10.SetTrigger("Rock");
        anim11.SetTrigger("Rock");
        anim12.SetTrigger("Rock");
        anim13.SetTrigger("Rock");
        anim14.SetTrigger("Rock");
        anim15.SetTrigger("Rock");
        anim16.SetTrigger("Rock");
        black.CrossFadeAlpha(1, 2f, true);
        yield return new WaitForSeconds(2f);
        introCam1.SetActive(false);
        introCam2.SetActive(true);
        introAnim.SetActive(false);
        yield return new WaitForSeconds(0.5f);
        click.SetActive(true);
        clunk.SetActive(true);
        blackfade.CrossFadeAlpha(0, 1f, true);
    }
}
