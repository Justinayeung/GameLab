using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TutorialManager : MonoBehaviour
{
    private Camera cam;
    public Vector2 touchPos;
    public GameObject[] popUps;
    private int popUpIndex;
    private TapManager tapManager;
    public GameObject scanToBegin;

    void Start()
    {
        cam = GameObject.FindGameObjectWithTag("MainCamera").GetComponent<Camera>();
        tapManager = FindObjectOfType<TapManager>();
        StartCoroutine(ScanToBeginEnd());
    }

    void Update()
    {
        for(int i = 0; i< popUps.Length; i++)
        {
            if(i == popUpIndex)
            {
                popUps[i].SetActive(true);
            }
            else
            {
                popUps[i].SetActive(false);
            }
        }

        if (popUpIndex == 0)
        {
            StartCoroutine(ScanToBeginEnd());
        }
        else if (popUpIndex == 1) //Start tutorial = once level spawned, tap platforms to move character
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

                if (Physics.Raycast(ray, out hit))
                {
                    if (hit.collider.tag == "Platform")
                    {
                        popUpIndex = 2;
                    }
                }
            }

            if (Input.GetMouseButtonDown(0))
            {
                Ray ray = cam.ScreenPointToRay(touchPos);
                RaycastHit hit;

                if (Physics.Raycast(ray, out hit))
                {
                    if (hit.collider.tag == "Platform")
                    {
                        popUpIndex = 2;
                    }
                }
            }
        }
        else if (popUpIndex == 2) //If platform is tapped then tap stairs icon
        {
            if (tapManager.stairs)
            {
                popUpIndex = 3;
            }
        }
        else if (popUpIndex == 3) //If stairs icon is tapped, tap to place object into scene
        {
            if (tapManager.stairsOnce)
            {
                popUpIndex = 4;
            }
        }
        else if (popUpIndex == 4) //If object placed, tap cancel
        {
            if (tapManager.cancel)
            {
                popUpIndex = 5;
            }
        }
        else if (popUpIndex == 5) //If cancel tapped, tap stairs
        {
            if (tapManager.cancelOnce)
            {
                popUpIndex = 6;
            }
        }
        else if (popUpIndex == 6) //If stairs are tapped, end 
        {
            this.gameObject.SetActive(false);
        }
    }
    IEnumerator ScanToBeginEnd()
    {
        yield return new WaitForSeconds(12f);
        popUpIndex = 1;
    }
}
