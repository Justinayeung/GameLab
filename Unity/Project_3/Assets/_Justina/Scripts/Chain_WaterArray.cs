using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Chain_WaterArray : MonoBehaviour
{
    public IcePlayer icePlayer;
    public TrapPlayer trapPlayer;
    public ChainPlayer chainPlayer;
    public DirtPlayer dirtPlayer;
    public GameObject[] waterBalls;
    public int waterNum = -1;

    void Start()
    {
        waterNum = -1;
        waterBalls[0].SetActive(false);
        waterBalls[1].SetActive(false);
        waterBalls[2].SetActive(false);
    }

    void OnTriggerEnter(Collider other)
    {
        if (!chainPlayer.chain_waterEmpty)
        {
            if (other.CompareTag("ChainPlayer"))
            {
                waterNum += 1;
                waterBalls[waterNum].SetActive(true);
                chainPlayer.chainWater.SetActive(false);
                chainPlayer.chain_waterEmpty = true;
            }
        }

        if (icePlayer.ice_waterEmpty)
        {
            if (other.CompareTag("IcePlayer"))
            {
                waterBalls[waterNum].SetActive(false);
                waterNum -= 1;
                icePlayer.iceWater.SetActive(true);
                icePlayer.ice_waterEmpty = false;
            }
        }

        if (trapPlayer.trap_waterEmpty)
        {
            if (other.CompareTag("TrapPlayer"))
            {
                waterBalls[waterNum].SetActive(false);
                waterNum -= 1;
                trapPlayer.trapWater.SetActive(true);
                trapPlayer.trap_waterEmpty = false;
            }
        }

        if (dirtPlayer.dirt_waterEmpty)
        {
            if (other.CompareTag("DirtPlayer"))
            {
                waterBalls[waterNum].SetActive(false);
                waterNum -= 1;
                dirtPlayer.dirtWater.SetActive(true);
                dirtPlayer.dirt_waterEmpty = false;
            }
        }
    }
}
