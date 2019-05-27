using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EyeRigid : MonoBehaviour
{
    public GameObject eye;
    public GameObject eyeAnim;
    public AudioSource knockSound;

    // Start is called before the first frame update
    void Start()
    {
        eye.SetActive(false);
        eyeAnim.SetActive(true);
    }

    void eyeball()
    {
        eye.SetActive(true);
        eyeAnim.SetActive(false);
    }

    void knock()
    {
        knockSound.Play();
    }
}
