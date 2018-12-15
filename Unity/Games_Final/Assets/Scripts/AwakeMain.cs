using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class AwakeMain : MonoBehaviour
{
    public GameObject MainMenu;
    public GameObject Animate;
    public GameObject startMenu;
    public GameObject helpMenu;
    public Animator anim;
    public Text Title;
    public float fadeoutTime;
    public bool openScene;
    public bool intoTheLight;

    public Image backgroundFade;
    public AudioSource audioMain;
    //private float transition = 0.01f;

    void Start()
    {
        intoTheLight = true;
        Animate.SetActive(false);
        MainMenu.SetActive(false);
        startMenu.SetActive(false);
        helpMenu.SetActive(false);
        fadeOut();
    }

    IEnumerator OpeningScene()
    {
        Animate.SetActive(true);
        yield return null;
    }

    void Update()
    {
        //transition += Time.deltaTime;

        if (intoTheLight == false)
        {
            backgroundFade.color = Color.Lerp(Color.black, Color.clear, Mathf.Min(3 / fadeoutTime));
            StartCoroutine("OpeningScene");
            intoTheLight = true;
        }

        if (openScene)
        {
            audioMain.Play();
            startMenu.SetActive(true);
            helpMenu.SetActive(false);
            openScene = false;
        }
    }

    public void fadeOut()
    {
        StartCoroutine("Fading");
    }

    IEnumerator Fading()
    {
        yield return new WaitForSeconds(3f);
        Color originalColor = Title.color;
        for (float t = 0.01f; t < fadeoutTime; t += Time.deltaTime)
        {
            Title.color = Color.Lerp(originalColor, Color.clear, Mathf.Min(3 / fadeoutTime));
        }
        yield return new WaitForSeconds(1f);
        intoTheLight = false;
        yield return null;
    }
}
