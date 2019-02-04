using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class FadeText : MonoBehaviour
{
    //Attach script to Text UI gameobject
    //StartCoroutine(Fade...(1f, GetComponent<Text>()));
    void Start()
    {
        
    }

    void Update()
    {
        
    }

    public IEnumerator FadeToAlpha(float t, Text i)
    {
        i.color = new Color(i.color.r, i.color.g, i.color.b, 0);
        while (i.color.a < 1.0f)
        {
            i.color = new Color(i.color.r, i.color.g, i.color.b, i.color.a + Time.deltaTime / t);
        }
        yield return null;
    }

    public IEnumerator FadeFromAlpha(float t, Text i)
    {
        i.color = new Color(i.color.r, i.color.g, i.color.b, 1);
        while (i.color.a < 0.0f)
        {
            i.color = new Color(i.color.r, i.color.g, i.color.b, i.color.a - Time.deltaTime / t);
        }
        yield return null;
    }
}
