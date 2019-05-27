using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ClothSoundTrigger : MonoBehaviour
{

   // public AudioClip clothSound;
    public AudioSource source;

   // private float volLowRange = .5f;
    //private float volHighRange = 1.0f;
    // Start is called before the first frame update
    void Start()
    {
        source = GetComponent<AudioSource>();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            //float vol = Random.Range(volLowRange, volHighRange);
            source.Play();
        }
    }
}
