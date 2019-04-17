using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI; 

public class StartButton : MonoBehaviour
{
    public Animator animMusic;

    void Start()
    {
        animMusic = GetComponent<Animator>();
        
        
    }

    void Update()
    {
        if (Input.anyKey) {

            StartCoroutine(nextScene());
            animMusic.SetTrigger("FadeOut");
        }
           
    }

    IEnumerator nextScene()
    {
       
        yield return new WaitForSeconds(5f);
        SceneManager.LoadScene("Forest");
        
    }
}
