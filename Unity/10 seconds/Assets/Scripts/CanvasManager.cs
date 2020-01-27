using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CanvasManager : MonoBehaviour
{
    public GameObject CanvasWon;
    public GameObject CanvasLost;
    private float timeLeft = 10.0f;
    public Mover mover;

    void Start()
    {
        CanvasWon.SetActive(false);
        CanvasLost.SetActive(false);
    }

    void Update()
    {
        timeLeft -= Time.deltaTime;
        if (timeLeft <= 0 && mover.villageDestroyed == false)
        {
            CanvasWon.SetActive(true);
            CanvasLost.SetActive(false);
        }
        else if (mover.villageDestroyed == true)
        {
            CanvasLost.SetActive(true);
            CanvasWon.SetActive(false);
        }
    }


}
