using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DecreaseWater : MonoBehaviour
{
    public IcePlayer icePlayer;
    public TrapPlayer trapPlayer;
    public ChainPlayer chainPlayer;
    public GrassPlayer grassPlayer;

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("IcePlayer"))
        {
            if (icePlayer.ice_waterEmpty)
            {
                transform.localScale -= new Vector3(0.0015f, 0.0015f, 0.0015f);
                icePlayer.ice_waterEmpty = false;
            }
        }
        
        if (other.CompareTag("TrapPlayer"))
        {
            if (trapPlayer.trap_waterEmpty)
            {
                transform.localScale -= new Vector3(0.0015f, 0.0015f, 0.0015f);
                trapPlayer.trap_waterEmpty = false;
            }
        }

        if (other.CompareTag("ChainPlayer"))
        {
            if (chainPlayer.chain_waterEmpty)
            {
                transform.localScale -= new Vector3(0.0015f, 0.0015f, 0.0015f);
                chainPlayer.chain_waterEmpty = false;
            }
        }

        if (other.CompareTag("GrassPlayer"))
        {
            if (grassPlayer.grass_waterEmpty)
            {
                transform.localScale -= new Vector3(0.0015f, 0.0015f, 0.0015f);
                grassPlayer.grass_waterEmpty = false;
            }
        }
    }
}
