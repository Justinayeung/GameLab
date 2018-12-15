using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class LoadCrumb : MonoBehaviour
{
    public Transform crumbBar;
    public float currentAmount;
    public float speed;

    void Start()
    {
        currentAmount = 10;
    }

    void Update ()
    {
        if (currentAmount < 10)
        {
            currentAmount += speed * Time.deltaTime;
        }
        crumbBar.GetComponent<Image>().fillAmount = currentAmount / 10;
    }
}
