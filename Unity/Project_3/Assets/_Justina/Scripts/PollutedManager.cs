using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PollutedManager : MonoBehaviour
{
    private float timer = 0;
    public bool treeLeaves1;
    public bool treeLeaves2;
    public bool treeLeaves3;
    public bool treeGroup1;
    public bool treeGroup2;
    public bool treeGroup3;

    public Light directionalLight;
    public Light spotLight;
    public GameObject tree1;
    public GameObject tree2;
    public GameObject tree3;
    public GameObject tree4;
    public GameObject tree5;
    public GameObject tree6;
    public GameObject tree7;
    public GameObject tree8;
    public GameObject tree9;
    public GameObject tree10;
    public GameObject tree11;
    int t1;
    int t2;
    bool decrease1;
    bool decrease2;

    public AudioSource industrialMusic;
    public Color orignalDirectionalColor;
    public Color originalSpotColor;
    public Color directionalColor;
    public Color spotColor;
    public bool factory;
    public bool smokeStack1;
    public bool smokeStack2;
    bool once = false;
    public RandomSpawn rand;

    void Start()
    {
        t1 = 266;
        t2 = 207;
        timer = 0;
        tree1.transform.localScale = new Vector3(t1, t1, t1);
        tree2.transform.localScale = new Vector3(t1, t1, t1);
        tree3.transform.localScale = new Vector3(t2, t2, t2);
        tree4.transform.localScale = new Vector3(t2, t2, t2);
        tree5.transform.localScale = new Vector3(t2, t2, t2);
        tree6.transform.localScale = new Vector3(t2, t2, t2);
        tree7.transform.localScale = new Vector3(t2, t2, t2);
        tree8.transform.localScale = new Vector3(t2, t2, t2);
        tree9.transform.localScale = new Vector3(t2, t2, t2);
        tree10.transform.localScale = new Vector3(t2, t2, t2);
        tree11.transform.localScale = new Vector3(t2, t2, t2);
        treeLeaves1 = false;
        treeLeaves2 = false;
        treeLeaves3 = false;
        treeGroup1 = false;
        treeGroup2 = false;
        treeGroup3 = false;
        factory = false;
        smokeStack1 = false;
        smokeStack2 = false;
    }

    void Update()
    {
        tree1.transform.localScale = new Vector3(t1, t1, t1);
        tree2.transform.localScale = new Vector3(t1, t1, t1);
        tree3.transform.localScale = new Vector3(t2, t2, t2);
        tree4.transform.localScale = new Vector3(t2, t2, t2);
        tree5.transform.localScale = new Vector3(t2, t2, t2);
        tree6.transform.localScale = new Vector3(t2, t2, t2);
        tree7.transform.localScale = new Vector3(t2, t2, t2);
        tree8.transform.localScale = new Vector3(t2, t2, t2);
        tree9.transform.localScale = new Vector3(t2, t2, t2);
        tree10.transform.localScale = new Vector3(t2, t2, t2);
        tree11.transform.localScale = new Vector3(t2, t2, t2);

        if (t1 <= 90)
        {
            decrease1 = false;
        }
        else
        {
            decrease1 = true;
        }

        if (t2 <= 70)
        {
            decrease2 = false;
        }
        else
        {
            decrease2 = true;
        }

        if (decrease1)
        {
            t1 -= 2;
        }
        else
        {
            t1 = 90;
        }

        if (decrease2)
        {
            t2 -= 2;
        }
        else
        {
            t2 = 70;
        }


        timer++;

        if (timer > 100)
        {
            treeLeaves1 = true;
        }
        if (timer > 120)
        {
            treeLeaves2 = true;
        }
        if (timer > 140)
        {
            treeLeaves3 = true;
        }
        if (timer > 160)
        {
            treeGroup1 = true;
        }
        if (timer > 180)
        {
            treeGroup2 = true;
        }
        if (timer > 200)
        {
            treeGroup3 = true;
            if (!once)
            {
                industrialMusic.Play();
                once = true;
            }
        }
        if (timer > 310)
        {
            if (!once)
            {
                industrialMusic.Play();
                once = true;
            }
            factory = true;
        }
        if (timer > 390)
        {
            smokeStack1 = true;
        }
        if (timer > 490)
        {
            float step = 1f;
            directionalLight.color = Color.Lerp(orignalDirectionalColor, directionalColor, step * Time.smoothDeltaTime);
            spotLight.color = Color.Lerp(originalSpotColor, spotColor, step * Time.smoothDeltaTime);
            smokeStack2 = true;
        }
        if (timer > 1000)
        {
            rand.canInstantiate = true;
        }
    }
}
