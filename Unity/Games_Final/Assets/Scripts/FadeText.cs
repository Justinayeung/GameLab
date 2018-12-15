using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class FadeText : MonoBehaviour
{
    public float fadeoutTime;

    void Start()
    {
        fadeOut();
    }

    public void fadeOut()
    {
        StartCoroutine("Fading");
    }

    IEnumerator Fading()
    {
        yield return new WaitForSeconds(3f);

        Text Title = GetComponent<Text>();
        Color originalColor = Title.color;
        for (float t = 0.01f; t < fadeoutTime; t += Time.deltaTime)
        {
            Title.color = Color.Lerp(originalColor, Color.clear, Mathf.Min(3/ fadeoutTime));
        }
        yield return null;
    }

}
