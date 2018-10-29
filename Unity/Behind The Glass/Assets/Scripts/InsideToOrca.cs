using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;


public class InsideToOrca : MonoBehaviour
{
    public GameObject orcaScene;
    public GameObject aquariumScene;

    public Text Shift;
    public GameObject SetTextQ;

    void Start()
    {
        Shift.text = " ";
        orcaScene.SetActive(false);
        aquariumScene.SetActive(true);
    }

    void OnTriggerStay2D(Collider2D other)
    {
        TextQ();

        if (other.tag == "Player" && Input.GetKey(KeyCode.Q))
        {
            orcaScene.SetActive(true);
            aquariumScene.SetActive(false);
        }
    }

    public void OnTriggerExit2D(Collider2D other)
    {
        TextOut();
    }

    void TextQ()
    {
        SetTextQ.SetActive(true);
        Shift.text = "Press Q to talk";
    }

    void TextOut()
    {
        SetTextQ.SetActive(false);
        Shift.text = " ";
    }
}
