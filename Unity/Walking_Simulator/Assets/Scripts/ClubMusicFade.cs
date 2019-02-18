using System.Collections;
using System.Collections.Generic;
using UnityEngine;



public  class ClubMusicFade: MonoBehaviour
{
    public AudioSource audioSource;

    private void Awake()
    {
        
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            StartCoroutine("fadeClub");
            audioSource.Play();
        }
    }

    public static IEnumerator FadeOut(AudioSource audioSource, float FadeTime)
    {
        float startVolume = audioSource.volume;

        while (audioSource.volume > 0)
        {
            yield return new WaitForSeconds(2);
            audioSource.volume -= startVolume * Time.deltaTime / FadeTime;
         
            audioSource.Stop();

           
        }

       // audioSource.Stop();
      //  audioSource.volume = startVolume;
    }

}
