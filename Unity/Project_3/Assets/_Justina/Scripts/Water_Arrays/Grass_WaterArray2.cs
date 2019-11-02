using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class Grass_WaterArray2 : MonoBehaviour
{
    public IcePlayer2 icePlayer;
    public TrapPlayer2 trapPlayer;
    public ChainPlayer2 chainPlayer;
    public GrassPlayer2 grassPlayer;
    public GameObject waterPool;
    bool poolFilled = false;
    public Text winText;
    public GameObject panelGrass;
    public GameObject buttons;

    private Vector3 _current;
    public float scale;
    public bool noWater;
    float timer;
    public DroughtManager manager;
    public float waterScaleWin;
    public float waterScaleChange;

    void Start()
    {
        poolFilled = false;
        panelGrass.SetActive(false);
        buttons.SetActive(false);
    }

    void Update()
    {
        if (poolFilled)
        {
            panelGrass.SetActive(true);
            buttons.SetActive(true);
            winText.text = "GRASS PLAYER WINS";
        }

        if (manager.Group4)
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

        if (scale >= waterScaleWin)
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
        if (other.CompareTag("GrassPlayer"))
        {
            if (!grassPlayer.grass_waterEmpty)
            {
                scale += waterScaleChange;
                grassPlayer.grass_waterEmpty = true;
            }
        }

        if (other.CompareTag("IcePlayer"))
        {
            if (icePlayer.ice_waterEmpty)
            {
                scale -= waterScaleChange;
                icePlayer.ice_waterEmpty = false;
            }
        }

        if (other.CompareTag("TrapPlayer"))
        {
            if (trapPlayer.trap_waterEmpty)
            {
                scale -= waterScaleChange;
                trapPlayer.trap_waterEmpty = false;
            }
        }

        if (other.CompareTag("ChainPlayer"))
        {
            if (chainPlayer.chain_waterEmpty)
            {
                scale -= waterScaleChange;
                chainPlayer.chain_waterEmpty = false;
            }
        }
    }
}
