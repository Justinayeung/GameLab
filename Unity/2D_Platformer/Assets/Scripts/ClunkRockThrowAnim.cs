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
    public GameObject cam1;
    public GameObject rockThrowChararcters;
    public GameObject mainClick;
    public GameObject mainClunk;
    public Image black;
    public GameObject throwAnim;
    public GameObject rock;

    void Awake()
    {
        throwAnim.SetActive(true);
        camRockThrow.SetActive(false);
        rockThrowChararcters.SetActive(false);
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
        yield return new WaitForSeconds(0.5f);
        mainClunk.transform.position = new Vector2(73, -1.4f);
        mainClick.transform.position = new Vector2(70, -1.5f);
        yield return new WaitForSeconds(0.5f);
        cam1.SetActive(false);
        mainClick.SetActive(false);
        mainClunk.SetActive(false);
        camMain.SetActive(false);
        camRockThrow.SetActive(true);
        rockThrowChararcters.SetActive(true);
        yield return new WaitForSeconds(1f);
        black.CrossFadeAlpha(0, 0.5f, true);
        yield return new WaitForSeconds(1f);
        rockThrowing.SetTrigger("rockThrow");
        clunk.SetTrigger("throw");
        yield return new WaitForSeconds(1f);
        black.CrossFadeAlpha(1, 0.5f, true);
        yield return new WaitForSeconds(0.5f);
        rock.transform.position = new Vector2(88, -8.3f);
        camMain.SetActive(true);
        camRockThrow.SetActive(false);
        rockThrowChararcters.SetActive(false);
        mainClick.SetActive(true);
        mainClunk.SetActive(true);
        yield return new WaitForSeconds(0.5f);
        black.CrossFadeAlpha(0, 0.5f, true);
        throwAnim.SetActive(false);
    }
}
