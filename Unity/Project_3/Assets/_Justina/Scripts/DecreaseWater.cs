using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DecreaseWater : MonoBehaviour
{
    public IcePlayer icePlayer;
    public TrapPlayer trapPlayer;
    public ChainPlayer chainPlayer;
    public DirtPlayer dirtPlayer;
    public GameObject trapWater;
    public GameObject chainWater;
    public GameObject dirtWater;

    void Start()
    {
        trapWater.SetActive(false);
        chainWater.SetActive(false);
        dirtWater.SetActive(false);
    }

    void OnTriggerEnter(Collider other)
    {
        if (icePlayer.ice_waterEmpty)
        {
            if (other.CompareTag("IcePlayer"))
            {
                transform.localScale -= new Vector3(0.001f, 0.001f, 0.001f);
                icePlayer.iceWater.SetActive(true);
                icePlayer.ice_waterEmpty = false;
            }
        }

        if (trapPlayer.trap_waterEmpty)
        {
            if (other.CompareTag("TrapPlayer"))
            {
                transform.localScale -= new Vector3(0.001f, 0.001f, 0.001f);
                trapWater.SetActive(true);
                trapPlayer.trap_waterEmpty = false;
            }
        }

        if (chainPlayer.chain_waterEmpty)
        {
            if (other.CompareTag("ChainPlayer"))
            {
                transform.localScale -= new Vector3(0.001f, 0.001f, 0.001f);
                chainWater.SetActive(true);
                chainPlayer.chain_waterEmpty = false;
            }
        }

        if (dirtPlayer.dirt_waterEmpty)
        {
            if (other.CompareTag("DirtPlayer"))
            {
                transform.localScale -= new Vector3(0.001f, 0.001f, 0.001f);
                dirtWater.SetActive(true);
                dirtPlayer.dirt_waterEmpty = false;
            }
        }
    }
}
