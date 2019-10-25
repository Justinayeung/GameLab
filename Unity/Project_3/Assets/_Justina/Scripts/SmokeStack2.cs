using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SmokeStack2 : MonoBehaviour
{
    public PollutedManager manager;
    public GameObject smokeParticle1;
    public GameObject smokeParticle2;

    void Start()
    {
        smokeParticle1.SetActive(false);
        smokeParticle2.SetActive(false);
    }

    void Update()
    {
        if (manager.smokeStack2)
        {
            Vector3 position = new Vector3(transform.position.x, 0, transform.position.z);
            transform.position = Vector3.MoveTowards(transform.position, position, 4 * Time.deltaTime);
        }

        if (transform.position == new Vector3(transform.position.x, 0, transform.position.z))
        {
            smokeParticle1.SetActive(true);
            StartCoroutine(SmokeExpand());
        }
    }

    IEnumerator SmokeExpand()
    {
        yield return new WaitForSeconds(10f);
        smokeParticle2.SetActive(true);
    }
}
