using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using UnityEngine;

public class ColliderToNext : MonoBehaviour
{
    public GameObject EndCanvas;
    public Image _EndImage;
    public Text _EndText;
    public string NextLevel;

    void Start()
    {
        EndCanvas.SetActive(false);
        _EndImage.canvasRenderer.SetAlpha(0);
        _EndText.canvasRenderer.SetAlpha(0);
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            StartCoroutine(ToNextLevel());
        }
    }

    IEnumerator ToNextLevel()
    {
        EndCanvas.SetActive(true);
        _EndImage.CrossFadeAlpha(1, 1f, true);
        yield return new WaitForSeconds(1f);
        _EndText.CrossFadeAlpha(1, 0.5f, true);
        yield return new WaitForSeconds(15f);
        SceneManager.LoadScene(NextLevel);
    }
}
