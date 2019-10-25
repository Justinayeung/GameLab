using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class PlayerInteraction : MonoBehaviour
{
    public GameObject coinImage;
    public Text shopText;
    public GameObject B1;
    public GameObject B2;
    public GameObject Panel;
    bool coinCollected;
    bool talkShop;

    Renderer rend;
    public Texture happy, angry;

    void Start()
    {
        talkShop = false;
        coinCollected = false;
    }

    void Update()
    {
        if (coinCollected)
        {
            coinImage.SetActive(true);
        }
        else
        {
            coinImage.SetActive(false);
        }

        //shopText.SetActive(talkShop);
        //B1.SetActive(talkShop);
        //B2.SetActive(talkShop);
        if (talkShop)
        {
            shopText.enabled = true;
        }
        else
        {
            shopText.enabled = false;
        }
        Panel.SetActive(talkShop);
    }

    void OnCollisionEnter(Collision other)
    {
        if (other.gameObject.CompareTag("Coin"))
        {
            Destroy(other.gameObject);
            coinCollected = true;
        }

        if (other.gameObject.CompareTag("Shop"))
        {
            talkShop = true;
            rend = other.gameObject.GetComponent<Renderer>();
        }
    }

    void OnCollisionExit(Collision other)
    {
        if (other.gameObject.CompareTag("Shop"))
        {
            talkShop = false;
        }
    }

    public void YesButton()
    {
        Debug.Log("YES");
        if (coinCollected)
        {
            shopText.text = "OMG THANKS";
            rend.material.SetTexture("_MainTex", happy);
        }
        else
        {
            shopText.text = "YOU LIAR YOU BROKE";
            rend.material.SetTexture("_MainTex", angry);
        }
    }

    public void NoButton()
    {
        Debug.Log("NO");
        if (coinCollected)
        {
            shopText.text = "OH YOU DO HAVE A COIN";
            rend.material.SetTexture("_MainTex", happy);
        }
        else
        {
            shopText.text = "GET OUT";
            rend.material.SetTexture("_MainTex", angry);
        }
    }
}
