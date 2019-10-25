using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class InteractionFight : MonoBehaviour
{
    public Slider powerSlider;
    public GameObject avengers;
    public GameObject thanosHead;
    Rigidbody headRB;
    EntranceSetup setup;
    bool canFight;
    bool won;
    bool lost;
    bool playLaugh;
    bool playNo;
    float dist;
    float counter;
    float thanosPowerLevel;

    void Start()
    {
        setup = GetComponent<EntranceSetup>();
        headRB = thanosHead.GetComponent<Rigidbody>();
        thanosPowerLevel = 5;
        won = false;
        lost = false;
        playLaugh = false;
        playNo = false;
    }

    void Update()
    {
        dist = setup.distancetToThanos;
        canFight = setup.soundPlayed;

        if (canFight && dist <= 5 && !won && !lost)
        {
            if (Input.GetKeyDown(KeyCode.Space))
            {
                counter = 0;
            }
            counter += Time.deltaTime;

            if (counter <= 0.2f)
            {
                thanosPowerLevel -= Time.deltaTime;
            }
            else
            {
                thanosPowerLevel += Time.deltaTime * 2;
            }

            if (thanosPowerLevel >= 10)
            {
                lost = true;
            }
            else if (thanosPowerLevel <= 0)
            {
                won = true;
            }
            powerSlider.value = thanosPowerLevel;
        }

        if (lost)
        {
            if (!playLaugh)
            {
                avengers.GetComponent<AudioSource>().Play();
                playLaugh = true;
            }

            avengers.transform.Translate(Vector3.down * Time.deltaTime);
            if (avengers.transform.position.y < -5)
            {
                Destroy(avengers);
            }
        }

        if (won)
        {
            if (!playNo)
            {
                thanosHead.GetComponent<AudioSource>().Play();
                playNo = true;
                headRB.AddForce(Vector3.up * 5, ForceMode.Impulse);
                headRB.useGravity = true;
            }
        }
    }
}
