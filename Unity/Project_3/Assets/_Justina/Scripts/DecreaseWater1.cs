using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DecreaseWater1 : MonoBehaviour
{
    public IcePlayer1 icePlayer;
    public TrapPlayer1 trapPlayer;
    public ChainPlayer1 chainPlayer;
    public GrassPlayer1 grassPlayer;

    void Start()
    {
        transform.localScale = new Vector3(0.05f, 0.05f, 0.05f);
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("IcePlayer"))
        {
            if (icePlayer.ice_waterEmpty)
            {
                transform.localScale -= new Vector3(0.004f, 0.004f, 0.004f);
                icePlayer.ice_waterEmpty = false;
            }
        }
        
        if (other.CompareTag("TrapPlayer"))
        {
            if (trapPlayer.trap_waterEmpty)
            {
                transform.localScale -= new Vector3(0.004f, 0.004f, 0.004f);
                trapPlayer.trap_waterEmpty = false;
            }
        }

        if (other.CompareTag("ChainPlayer"))
        {
            if (chainPlayer.chain_waterEmpty)
            {
                transform.localScale -= new Vector3(0.004f, 0.004f, 0.004f);
                chainPlayer.chain_waterEmpty = false;
            }
        }

        if (other.CompareTag("GrassPlayer"))
        {
            if (grassPlayer.grass_waterEmpty)
            {
                transform.localScale -= new Vector3(0.004f, 0.004f, 0.004f);
                grassPlayer.grass_waterEmpty = false;
            }
        }
    }
}
