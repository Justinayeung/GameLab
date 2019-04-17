using System.Collections;
using System.Collections.Generic;
using Cinemachine;
using UnityEngine;

public class HitWall : MonoBehaviour
{
    public int hitsNeeded = 3;
    public int hitsTaken;
    public GameObject dustDestroy;
    public GameObject rocks;
    public GameObject rockwall;
    public AudioSource rockNoise;

    //public float shakeDuration = 0.3f;
    //public float shakeAmplitude = 1.3f;
    //public float shakeFrequency = 2.0f;
    //private float shakeTime = 0f;
    //public CinemachineVirtualCamera virtualCam;
    //private CinemachineBasicMultiChannelPerlin virtualNoise;

    void Start()
    {
        dustDestroy.SetActive(false);
        //if (virtualCam != null)
        //{
        //    virtualNoise = virtualCam.GetCinemachineComponent<Cinemachine.CinemachineBasicMultiChannelPerlin>();
        //}
    }

    //void Update()
    //{
    //    if (Input.GetKeyDown(KeyCode.E))
    //    {
    //        shakeTime = shakeDuration;
    //    }

    //    if (virtualCam != null && virtualNoise != null)
    //    {
    //        if (shakeTime > 0)
    //        {
    //            virtualNoise.m_AmplitudeGain = shakeAmplitude;
    //            virtualNoise.m_FrequencyGain = shakeFrequency;
    //            shakeTime -= Time.deltaTime;
    //        }
    //        else
    //        {
    //            virtualNoise.m_AmplitudeGain = 0f;
    //            shakeTime = 0f;
    //        }
    //    }
    //}

    void OnTriggerEnter2D(Collider2D other)
    {
        if (other.gameObject.CompareTag("Punch"))
        {
            hitsTaken += 1;
            Debug.Log("A collision occured, hitsTaken: hitsTaken");

            if (hitsTaken >= hitsNeeded)
            {
                StartCoroutine(destroyed());
                rockNoise.Play();
            }
        }  
    }

    IEnumerator destroyed()
    {
        Destroy(rocks);
        dustDestroy.SetActive(true);
        yield return new WaitForSeconds(2);
        dustDestroy.SetActive(false);
        rockNoise.Stop();
        yield return new WaitForSeconds(0.1f);
        rockwall.SetActive(false);
    }
}
