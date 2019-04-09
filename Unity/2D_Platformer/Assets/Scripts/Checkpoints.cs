using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Checkpoints : MonoBehaviour
{
    public GameObject saveParticles;
    private GameMaster gm;
    public GameObject cp;
    bool pActivated;

    void Start()
    {
        pActivated = true;
        saveParticles.SetActive(false);
        gm = GameObject.FindGameObjectWithTag("GM").GetComponent<GameMaster>();
    }

    void OnTriggerEnter2D(Collider2D other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            gm.lastCheckPointPos = cp.transform.position;
            StartCoroutine(Particles());
        }
    }

    IEnumerator Particles()
    {
        if (pActivated)
        {
            saveParticles.SetActive(true);
            yield return new WaitForSeconds(4f);
            saveParticles.SetActive(false);
            pActivated = false;
        }
    }
}
