using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class ClunkRockThrowAnim : MonoBehaviour
{
    public Animator rockThrowing;
    public Animator clunk;
    public GameObject camMain;
    public GameObject camRockThrow;
    public GameObject rockThrowChararcters;
    public GameObject mainClick;
    public GameObject mainClunk;
    public Image black;
    public Image anim;
    public GameObject throwAnim;
    public GameObject rock;
    public GameObject rock2;
    public AudioSource nightwake;

    void Start()
    {
        camRockThrow.SetActive(false);
        rockThrowChararcters.SetActive(false);
        throwAnim.SetActive(true);
        rock2.SetActive(false);
    }

    void OnTriggerEnter2D(Collider2D other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            StartCoroutine(rockThrow());
        }
    }

    IEnumerator rockThrow()
    {
        black.CrossFadeAlpha(1, 0.5f, true);
        nightwake.volume = 0.3f;
        yield return new WaitForSeconds(0.5f);
        mainClunk.transform.position = new Vector2(73, -1.4f);
        mainClick.transform.position = new Vector2(70, -1.5f);
        yield return new WaitForSeconds(0.5f);
        mainClick.SetActive(false);
        mainClunk.SetActive(false);
        camMain.SetActive(false);
        camRockThrow.SetActive(true);
        rockThrowChararcters.SetActive(true);
        yield return new WaitForSeconds(1f);
        anim.CrossFadeAlpha(0.5f, 0.5f, true);
        black.CrossFadeAlpha(0, 0.5f, true);
        yield return new WaitForSeconds(1f);
        rockThrowing.SetTrigger("rockThrow");
        clunk.SetTrigger("throw");
        yield return new WaitForSeconds(0.7f);
        anim.CrossFadeAlpha(0, 0.5f, true);
        black.CrossFadeAlpha(1, 0.5f, true);
        yield return new WaitForSeconds(0.5f);
        camMain.SetActive(true);
        camRockThrow.SetActive(false);
        rockThrowChararcters.SetActive(false);
        mainClick.SetActive(true);
        mainClunk.SetActive(true);
        rock.SetActive(false);
        rock2.SetActive(true);
        yield return new WaitForSeconds(0.5f);
        nightwake.volume = 0.5f;
        throwAnim.SetActive(false);
        black.CrossFadeAlpha(0, 0.5f, true);
    }
}
