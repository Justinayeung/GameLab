using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class TapManager : MonoBehaviour
{
    private Camera cam;
    public Vector2 touchPos;
    public bool stairs;
    public bool bridge;
    public bool cancel;
    public GameObject stairsPrefab;
    public GameObject bridgePrefab;
    private Image StairsImage;
    private Image BridgeImage;
    private Image CancelImage;

    public bool stairsOnce;
    public bool bridgeOnce;
    public bool cancelOnce;

    public Sprite stairsSelected;
    public Sprite stairsNotSelected;
    public Sprite bridgeSelected;
    public Sprite bridgeNotSelected;
    public Sprite cancelSelected;
    public Sprite cancelNotSelected;

    public GameObject StartCanvas;
    public Image levelImage;
    public GameObject PlayCanvas;

    void Start()
    {
        StairsImage = GameObject.FindGameObjectWithTag("ToggleStairs").GetComponent<Image>();
        BridgeImage = GameObject.FindGameObjectWithTag("ToggleBridge").GetComponent<Image>();
        CancelImage = GameObject.FindGameObjectWithTag("ToggleCancel").GetComponent<Image>();
        cam = GameObject.FindGameObjectWithTag("MainCamera").GetComponent<Camera>();
        stairsOnce = true;
        bridgeOnce = true;
        cancelOnce = true;
        StartCoroutine(StartingLevel());
    }

    void Update()
    {
        var fingerCount = 0;
        foreach (Touch touch in Input.touches)
        {
            if (touch.phase != TouchPhase.Ended && touch.phase != TouchPhase.Canceled)
            {
                fingerCount++;
            }
        }

        if (fingerCount > 0)
        {
            Touch touch = Input.GetTouch(0);
            switch (touch.phase)
            {
                case TouchPhase.Began:
                    touchPos = touch.position;
                    break;
            }

            Ray ray = cam.ScreenPointToRay(touchPos);
            RaycastHit hit;

            if (Physics.Raycast(ray, out hit) && stairs)
            {
                if (!stairsOnce)
                {
                    Instantiate(stairsPrefab, hit.point, Quaternion.identity);
                    stairsOnce = true;
                }
            }

            if (Physics.Raycast(ray, out hit) && bridge)
            {
                if (!bridgeOnce)
                {
                    Instantiate(bridgePrefab, hit.point, Quaternion.identity);
                    bridgeOnce = true;
                }
            }

            if (Physics.Raycast(ray, out hit) && cancel)
            {
                if (hit.collider.tag == "Bridge" || hit.collider.tag == "Stairs")
                {
                    Destroy(hit.collider.gameObject);
                }
            }
        }

        if (Input.GetMouseButtonDown(0))
        {
            Ray ray = cam.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;

            if (Physics.Raycast(ray, out hit) && stairs)
            {
                if (!stairsOnce)
                {
                    Instantiate(stairsPrefab, hit.point, Quaternion.identity);
                    stairsOnce = true;
                }
            }

            if (Physics.Raycast(ray, out hit) && bridge)
            {
                if (!bridgeOnce)
                {
                    Instantiate(bridgePrefab, hit.point, Quaternion.identity);
                    bridgeOnce = true;
                }
            }

            if (Physics.Raycast(ray, out hit) && cancel)
            {
                if (hit.collider.tag == "Bridge" || hit.collider.tag == "Stairs")
                {
                    if (!cancelOnce)
                    {
                        Destroy(hit.collider.gameObject);
                        cancelOnce = true;
                    }
                }
            }
        }

        if (stairsOnce)
        {
            stairs = false;
        }

        if (bridgeOnce)
        {
            bridge = false;
        }

        if(cancelOnce)
        {
            cancel = false;
        }

        if (stairs)
        {
            StairsImage.sprite = stairsSelected;
        }
        else
        {
            StairsImage.sprite = stairsNotSelected;
        }

        if (bridge)
        {
            BridgeImage.sprite = bridgeSelected;
        }
        else
        {
            BridgeImage.sprite = bridgeNotSelected;
        }

        if (cancel)
        {
            CancelImage.sprite = cancelSelected;
        }
        else
        {
            CancelImage.sprite = cancelNotSelected;
        }
    }

    public void StairButtonPress()
    {
        stairs = !stairs;
        bridge = false;
        cancel = false;
        stairsOnce = false;
    }

    public void BridgeButtonPress()
    {
        bridge = !bridge;
        stairs = false;
        cancel = false;
        bridgeOnce = false;
    }

    public void CancelButtonPress()
    {
        cancel = !cancel;
        stairs = false;
        bridge = false;
        cancelOnce = false;
    }

    IEnumerator StartingLevel()
    {
        PlayCanvas.SetActive(false);
        StartCanvas.SetActive(true);
        yield return new WaitForSeconds(4f);
        levelImage.CrossFadeAlpha(0, 1f, true);
        yield return new WaitForSeconds(1f);
        StartCanvas.SetActive(false);
        PlayCanvas.SetActive(true);
    }
}
