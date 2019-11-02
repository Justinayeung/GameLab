using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DecreaseWater2 : MonoBehaviour
{
    public IcePlayer2 icePlayer;
    public TrapPlayer2 trapPlayer;
    public ChainPlayer2 chainPlayer;
    public GrassPlayer2 grassPlayer;

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("IcePlayer"))
        {
            if (icePlayer.ice_waterEmpty)
            {
                transform.localScale -= new Vector3(0.02f, 0.02f, 0.02f);
                icePlayer.ice_waterEmpty = false;
            }
        }
        
        if (other.CompareTag("TrapPlayer"))
        {
            if (trapPlayer.trap_waterEmpty)
            {
                transform.localScale -= new Vector3(0.02f, 0.02f, 0.02f);
                trapPlayer.trap_waterEmpty = false;
            }
        }

        if (other.CompareTag("ChainPlayer"))
        {
            if (chainPlayer.chain_waterEmpty)
            {
                transform.localScale -= new Vector3(0.02f, 0.02f, 0.02f);
                chainPlayer.chain_waterEmpty = false;
            }
        }

        if (other.CompareTag("GrassPlayer"))
        {
            if (grassPlayer.grass_waterEmpty)
            {
                transform.localScale -= new Vector3(0.02f, 0.02f, 0.02f);
                grassPlayer.grass_waterEmpty = false;
            }
        }
    }
}
