using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;
using UnityEngine.SceneManagement;

public class PlayButton : MonoBehaviour
{ 
    public string sceneName;
    public GameObject blackImage;
    public Image black;
    public Text headphones;
    public Text loading;
    public Image underBlack;
    public GameObject underblack;

    public void Awake()
    {
        underblack.SetActive(false);
        underBlack.canvasRenderer.SetAlpha(0);
        blackImage.SetActive(false);
        black.canvasRenderer.SetAlpha(0);
        headphones.canvasRenderer.SetAlpha(0);
        loading.canvasRenderer.SetAlpha(0);
    }

    public void PlayGame()
    {
        underblack.SetActive(true);
        blackImage.SetActive(true);
        StartCoroutine("fadeHeadphones");
        Debug.Log("Game is Playing");
    }

    IEnumerator fadeHeadphones()
    {
        black.CrossFadeAlpha(1, 1f, true);
        headphones.CrossFadeAlpha(1, 1f, true);
        loading.CrossFadeAlpha(1, 1f, true);
        underBlack.canvasRenderer.SetAlpha(1);
        yield return new WaitForSeconds(1);
        SceneManager.LoadSceneAsync("Walking");
        yield return new WaitForSeconds(9f);
        headphones.CrossFadeAlpha(0, 2f, true);
        loading.CrossFadeAlpha(0, 1.5f, true);
        black.CrossFadeAlpha(0, 1.5f, true);
    }
}