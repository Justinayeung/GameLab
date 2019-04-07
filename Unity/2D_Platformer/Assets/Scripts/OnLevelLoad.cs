using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using UnityEngine;

public class OnLevelLoad : MonoBehaviour
{
    public Image black;

    void Awake()
    {
        black.canvasRenderer.SetAlpha(1);
    }

    void OnEnable()
    {
        SceneManager.sceneLoaded += OnSceneLoaded;
    }

    void OnSceneLoaded(Scene Cave, LoadSceneMode mode)
    {
        StartCoroutine(fadeIn());
    }

    void OnDisable()
    {
        SceneManager.sceneLoaded -= OnSceneLoaded;
    }

    public IEnumerator fadeIn()
    {
        yield return new WaitForSeconds(1f);
        black.CrossFadeAlpha(0, 1f, true);
        black.canvasRenderer.SetAlpha(0);
    }
}
