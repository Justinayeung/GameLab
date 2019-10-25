﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class Ice_WaterArray : MonoBehaviour
{
    public IcePlayer icePlayer;
    public TrapPlayer trapPlayer;
    public ChainPlayer chainPlayer;
    public GrassPlayer grassPlayer;
    public GameObject waterPool;
    bool poolFilled = false;
    public Text winText;
    public GameObject panelIce;
    public GameObject buttons;

    private Vector3 _current;
    public float scale;
    public bool noWater;
    float timer;
    public PollutedManager manager;

    void Start()
    {
        poolFilled = false;
        panelIce.SetActive(false);
        buttons.SetActive(false);
        scale = 0.01f;
    }

    void Update()
    {
        Debug.Log(timer);
        if (poolFilled)
        {
            panelIce.SetActive(true);
            buttons.SetActive(true);
            winText.text = "ICE PLAYER WINS";
        }

        if (manager.treeGroup1)
        {
            scale -= 0.00004f;
        }

        if (scale <= 0)
        {
            scale = 0;
            timer++;
        }
        if (scale > 0)
        {
            timer = 0;
            noWater = false;
        }
        if (timer > 72f)
        {
            noWater = true;
        }
        else
        {
            noWater = false;
        }

        if (scale >= 0.033f)
        {
            poolFilled = true;
        }
        else
        {
            poolFilled = false;
        }

        _current = new Vector3(scale, scale, scale);
        waterPool.transform.localScale = _current;
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("IcePlayer"))
        {
            if (!icePlayer.ice_waterEmpty)
            {
                scale += 0.00825f;
                icePlayer.ice_waterEmpty = true;
            }
        }

        if (other.CompareTag("TrapPlayer"))
        {
            if (trapPlayer.trap_waterEmpty)
            {
                scale -= 0.00825f;
                trapPlayer.trap_waterEmpty = false;
            }
        }

        if (other.CompareTag("ChainPlayer"))
        {
            if (chainPlayer.chain_waterEmpty)
            {
                scale -= 0.00825f;
                chainPlayer.chain_waterEmpty = false;
            }
        }

        if (other.CompareTag("GrassPlayer"))
        {
            if (grassPlayer.grass_waterEmpty)
            {
                scale -= 0.00825f;
                grassPlayer.grass_waterEmpty = false;
            }
        }
    }
}
