using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class WinManager : MonoBehaviour
{
    public Text winText;
    public GameObject icePanel;
    public GameObject trapPanel;
    public GameObject chainPanel;
    public GameObject grassPanel;
    public GameObject buttons;

    public IcePlayer ice;
    public TrapPlayer trap;
    public ChainPlayer chain;
    public GrassPlayer grass;

    void Update()
    {
        //If ice player is the last one living
        if (ice.living && !trap.living && !chain.living && !grass.living)
        {
            icePanel.SetActive(true);
            buttons.SetActive(true);
            winText.text = "ICE PLAYER WINS";
        }

        //If trap player is the last one living
        if (trap.living && !ice.living && !chain.living && !grass.living)
        {
            trapPanel.SetActive(true);
            buttons.SetActive(true);
            winText.text = "TRAP PLAYER WINS";
        }

        //If chain player is the last one living
        if (chain.living && !ice.living && !trap.living && !grass.living)
        {
            chainPanel.SetActive(true);
            buttons.SetActive(true);
            winText.text = "CHAIN PLAYER WINS";
        }

        //If grass player is the last one living
        if (grass.living && !ice.living && !trap.living && !chain.living)
        {
            grassPanel.SetActive(true);
            buttons.SetActive(true);
            winText.text = "GRASS PLAYER WINS";
        }
    }
}
