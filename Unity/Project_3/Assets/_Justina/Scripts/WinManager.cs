using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class WinManager : MonoBehaviour
{
    public GameObject winCanvas;
    public Text winText;
    public GameObject icePanel;
    public GameObject trapPanel;
    public GameObject chainPanel;
    public GameObject grassPanel;
    public GameObject buttons;

    public GameObject ice;
    public GameObject trap;
    public GameObject chain;
    public GameObject grass;
    public bool won;

    void Start()
    {
        won = false;
    }

    void Update()
    {
        //If ice player is the last one living
        if (ice.activeInHierarchy)
        {
            if (!trap.activeInHierarchy && !chain.activeInHierarchy && !grass.activeInHierarchy)
            {
                won = true;
                winCanvas.SetActive(true);
                icePanel.SetActive(true);
                trapPanel.SetActive(false);
                chainPanel.SetActive(false);
                grassPanel.SetActive(false);
                buttons.SetActive(true);
                winText.text = "ICE PLAYER WINS";
            }
        }

        //If trap player is the last one living
        if (trap.activeInHierarchy)
        {
            if (!ice.activeInHierarchy && !chain.activeInHierarchy && !grass.activeInHierarchy)
            {
                won = true;
                winCanvas.SetActive(true);
                trapPanel.SetActive(true);
                icePanel.SetActive(false);
                chainPanel.SetActive(false);
                grassPanel.SetActive(false);
                buttons.SetActive(true);
                winText.text = "TRAP PLAYER WINS";
            }
        }

        //If chain player is the last one living
        if (chain.activeInHierarchy)
        {
            if (!ice.activeInHierarchy && !trap.activeInHierarchy && !grass.activeInHierarchy)
            {
                won = true;
                winCanvas.SetActive(true);
                chainPanel.SetActive(true);
                icePanel.SetActive(false);
                trapPanel.SetActive(false);
                grassPanel.SetActive(false);
                buttons.SetActive(true);
                winText.text = "CHAIN PLAYER WINS";
            }
        }

        //If grass player is the last one living
        if (grass.activeInHierarchy)
        {
            if (!ice.activeInHierarchy && !trap.activeInHierarchy && !chain.activeInHierarchy)
            {
                won = true;
                winCanvas.SetActive(true);
                grassPanel.SetActive(true);
                icePanel.SetActive(false);
                trapPanel.SetActive(false);
                chainPanel.SetActive(false);
                buttons.SetActive(true);
                winText.text = "GRASS PLAYER WINS";
            }
        }
    }
}
