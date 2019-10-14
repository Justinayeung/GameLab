using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Dirt_WaterArray : MonoBehaviour
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
        if (!dirtPlayer.dirt_waterEmpty)
        {
            if (other.CompareTag("DirtPlayer"))
            {
                waterNum += 1;
                waterBalls[waterNum].SetActive(true);
                dirtPlayer.dirtWater.SetActive(false);
                dirtPlayer.dirt_waterEmpty = true;
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

        if (chainPlayer.chain_waterEmpty)
        {
            if (other.CompareTag("ChainPlayer"))
            {
                waterBalls[waterNum].SetActive(false);
                waterNum -= 1;
                chainPlayer.chainWater.SetActive(true);
                chainPlayer.chain_waterEmpty = false;
            }
        }
    }
}
