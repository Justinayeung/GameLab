using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class LightSwitch : MonoBehaviour
{
    public Light[] roomLights;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            for (int i = 0; i < roomLights.Length; i++)
            {
                //roomLights[i].enabled = false;
                StartCoroutine(Flicker(roomLights[i]));
            }
        }
    }

    IEnumerator Flicker(Light rl)
    {
        yield return new WaitForSeconds(.1f);
        rl.intensity = 0;
        yield return new WaitForSeconds(.1f);
        rl.intensity = 1;
        yield return new WaitForSeconds(.1f);
        rl.intensity = 0;
        yield return new WaitForSeconds(.1f);
        rl.color = Color.red;
        yield return new WaitForSeconds(.1f);
        rl.intensity = 1;
        yield return new WaitForSeconds(.1f);
        rl.intensity = 0;
        yield return new WaitForSeconds(.1f);
        rl.intensity = .5f;

        SceneManager.LoadSceneAsync("TextDemo");        //Smoother transition between scenes
    }

    IEnumerator Fade(Light rl)
    {
        while (rl.intensity > 0)
        {
            yield return new WaitForSeconds(.1f);
            rl.intensity -= .1f;
        }
    }
}
