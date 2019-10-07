using System.Collections;
using System.Collections.Generic;
using UnityEngine.Rendering.PostProcessing;
using UnityEngine;

public class EnemySpawn : MonoBehaviour
{
    public AudioSource sonicWave;
    public AudioSource sonicQueen;
    public AudioSource bees;
    public Transform[] spawnPoints1;
    public Transform[] spawnPoints2;
    public Transform[] spawnPoints3;
    public Transform[] spawnPoints4;
    public Transform[] spawnPoint5;
    public GameObject[] enemy;

    int randSpawnPoint, randEnemy;
    public static bool spawnAllowed;
    public float startTimeBtwSpawns;
    public float startTimeBtwSpawnsL2;
    public float startTimeBtwSpawnsL3;
    public float startTimeBtwSpawnsL4;

    public float timer;
    public bool Level2 = false;
    public bool Level3 = false;
    public bool Level4 = false;
    public bool Level5 = false;
    public GameObject LvlParticles;
    bool lvlParticle1 = false;
    bool lvlParticle2 = false;
    bool lvlParticle3 = false;
    bool lvlParticle4 = false;
    bool lvlParticle5 = false;

    private float timeBtwSpawns1;
    private float timeBtwSpawns2;
    private float timeBtwSpawns3;
    private float timeBtwSpawns4;

    public PostProcessVolume activeVolume;
    public Player hive;

    private bool ppVolume1 = false;
    private bool ppVolume2 = false;
    private bool ppVolume3 = false;
    private bool ppVolume4 = false;
    private bool ppVolume5 = false;

    RandomSpawnArea NectarSpawn;
    Hive beeHive;
    bool queen = false;

    public enum States
    {
        L1,
        L2,
        L3,
        L4,
        L5
    };

    public States currentState;

    void Start()
    {
        queen = false;
        beeHive = GameObject.FindGameObjectWithTag("Hive").GetComponent<Hive>();
        NectarSpawn = GameObject.FindGameObjectWithTag("SpawnNectar").GetComponent<RandomSpawnArea>();
        timer = Time.deltaTime;
        timeBtwSpawns1 = startTimeBtwSpawns;
        timeBtwSpawns2 = startTimeBtwSpawns;
        timeBtwSpawns3 = startTimeBtwSpawns;
        timeBtwSpawns4 = startTimeBtwSpawns;
        currentState = States.L1;
    }

    void Update()
    {
        if (hive.HiveDestroyed == false)
        {
            timer++;
            if (timer < 1400)
            {
                currentState = States.L1;
                if (!lvlParticle1)
                {
                    Instantiate(LvlParticles, new Vector2(0, 0), Quaternion.identity);
                    lvlParticle1 = true;
                    if (!ppVolume1)
                    {
                        StartCoroutine(volumeChange1());
                    }
                }
            }
            else if (timer > 1400 && timer < 2500)
            {
                currentState = States.L2;
                Level2 = true;
                if (!lvlParticle2)
                {
                    Instantiate(LvlParticles, new Vector2(0, 0), Quaternion.identity);
                    lvlParticle2 = true;
                    if (!ppVolume2)
                    {
                        StartCoroutine(volumeChange2());
                    }
                    NectarSpawn.canInstantiate = true;
                }
            }
            else if (timer > 2500 && timer < 4000)
            {
                currentState = States.L3;
                Level3 = true;
                if (!lvlParticle3)
                {
                    Instantiate(LvlParticles, new Vector2(0, 0), Quaternion.identity);
                    lvlParticle3 = true;
                    if (!ppVolume3)
                    {
                        StartCoroutine(volumeChange3());
                    }
                }
            }
            else if (timer > 4000 && timer < 5500)
            {
                currentState = States.L4;
                Level4 = true;
                if (!lvlParticle4)
                {
                    Instantiate(LvlParticles, new Vector2(0, 0), Quaternion.identity);
                    lvlParticle4 = true;
                    if (!ppVolume4)
                    {
                        StartCoroutine(volumeChange4());
                    }
                }
            }
            else if (timer > 5500)
            {
                currentState = States.L5;
                Level5 = true;
                if (!lvlParticle5)
                {
                    Instantiate(LvlParticles, new Vector2(0, 0), Quaternion.identity);
                    lvlParticle5 = true;
                    if (!ppVolume5)
                    {
                        StartCoroutine(volumeChange5());
                    }
                }
            }

            switch (currentState)
            {
                case States.L1:
                    L1Update();
                    break;
                case States.L2:
                    //L1Update();
                    L2Update();
                    break;
                case States.L3:
                    L1Update();
                    L2Update();
                    //L3Update();
                    break;
                case States.L4:
                    L1Update();
                    L2Update();
                    L3Update();
                    //L4Update();
                    break;
                case States.L5:
                    L1Update();
                    L2Update();
                    L3Update();
                    //L4Update();
                    L5Update();
                    break;
            }
        }
    }

    void L1Update()
    {
        if (timeBtwSpawns1 <= 0)
        {
            randSpawnPoint = Random.Range(0, spawnPoints1.Length - 1);
            Instantiate(enemy[0], spawnPoints1[randSpawnPoint].position, Quaternion.identity);
            timeBtwSpawns1 = startTimeBtwSpawns;
        }
        else
        {
            timeBtwSpawns1 -= Time.deltaTime;
        }
    }

    void L2Update()
    {
        if (timeBtwSpawns2 <= 0)
        {
            randSpawnPoint = Random.Range(0, spawnPoints2.Length - 1);
            Instantiate(enemy[1], spawnPoints2[randSpawnPoint].position, Quaternion.Euler(0, 0, 180));
            timeBtwSpawns2 = startTimeBtwSpawnsL2;
        }
        else
        {
            timeBtwSpawns2 -= Time.deltaTime;
        }
    }

    void L3Update()
    {
        if (timeBtwSpawns3 <= 0)
        {
            randSpawnPoint = Random.Range(0, spawnPoints3.Length - 1);
            Instantiate(enemy[2], spawnPoints3[randSpawnPoint].position, Quaternion.Euler(0, 0, 180));
            timeBtwSpawns3 = startTimeBtwSpawnsL3;
        }
        else
        {
            timeBtwSpawns3 -= Time.deltaTime;
        }
    }

    void L4Update()
    {
        if (timeBtwSpawns4 <= 0)
        {
            randSpawnPoint = Random.Range(0, spawnPoints1.Length - 1);
            Instantiate(enemy[3], spawnPoints4[randSpawnPoint].position, Quaternion.Euler(0, 0, 180));
            timeBtwSpawns4 = startTimeBtwSpawnsL4;
        }
        else
        {
            timeBtwSpawns4 -= Time.deltaTime;
        }
    }

    void L5Update()
    {
        if (!queen)
        {
            randSpawnPoint = Random.Range(0, spawnPoints1.Length - 1);
            Instantiate(enemy[4], spawnPoint5[randSpawnPoint].position, Quaternion.Euler(0, 0, 180));
            queen = true;
        }
    }

    IEnumerator volumeChange1()
    {
        ChromaticAberration chrome;
        activeVolume.profile.TryGetSettings(out chrome);
        if (chrome != null)
        {
            sonicWave.Play();
            bees.Play();
            yield return new WaitForSeconds(0.2f);
            chrome.intensity.value = 0.5f;
            bees.volume = 0.7f;
            yield return new WaitForSeconds(0.2f);
            chrome.intensity.value = 1f;
            bees.volume = 0.5f;
            yield return new WaitForSeconds(0.2f);
            chrome.intensity.value = 0.5f;
            bees.volume = 0.3f;
            yield return new WaitForSeconds(0.2f);
            chrome.intensity.value = 0f;
            bees.Stop();
            ppVolume1 = true;
        }
    }

    IEnumerator volumeChange2()
    {
        ChromaticAberration chrome;
        activeVolume.profile.TryGetSettings(out chrome);
        if (chrome != null)
        {
            sonicWave.Play();
            bees.Play();
            yield return new WaitForSeconds(0.2f);
            chrome.intensity.value = 0.5f;
            bees.volume = 0.7f;
            yield return new WaitForSeconds(0.2f);
            chrome.intensity.value = 1f;
            bees.volume = 0.5f;
            yield return new WaitForSeconds(0.2f);
            chrome.intensity.value = 0.5f;
            bees.volume = 0.3f;
            yield return new WaitForSeconds(0.2f);
            chrome.intensity.value = 0f;
            bees.Stop();
            ppVolume2 = true;
        }
    }

    IEnumerator volumeChange3()
    {
        ChromaticAberration chrome;
        activeVolume.profile.TryGetSettings(out chrome);
        if (chrome != null)
        {
            sonicWave.Play();
            bees.Play();
            yield return new WaitForSeconds(0.2f);
            chrome.intensity.value = 0.5f;
            bees.volume = 0.7f;
            yield return new WaitForSeconds(0.2f);
            chrome.intensity.value = 1f;
            bees.volume = 0.5f;
            yield return new WaitForSeconds(0.2f);
            chrome.intensity.value = 0.5f;
            bees.volume = 0.3f;
            yield return new WaitForSeconds(0.2f);
            chrome.intensity.value = 0f;
            bees.Stop();
            ppVolume3 = true;
        }
    }

    IEnumerator volumeChange4()
    {
        ChromaticAberration chrome;
        activeVolume.profile.TryGetSettings(out chrome);
        if (chrome != null)
        {
            sonicWave.Play();
            bees.Play();
            yield return new WaitForSeconds(0.2f);
            chrome.intensity.value = 0.5f;
            bees.volume = 0.7f;
            yield return new WaitForSeconds(0.2f);
            chrome.intensity.value = 1f;
            bees.volume = 0.5f;
            yield return new WaitForSeconds(0.2f);
            chrome.intensity.value = 0.5f;
            bees.volume = 0.3f;
            yield return new WaitForSeconds(0.2f);
            chrome.intensity.value = 0f;
            bees.Stop();
            ppVolume4 = true;
        }
    }

    IEnumerator volumeChange5()
    {
        ChromaticAberration chrome;
        activeVolume.profile.TryGetSettings(out chrome);
        if (chrome != null)
        {
            sonicQueen.Play();
            bees.Play();
            yield return new WaitForSeconds(0.2f);
            chrome.intensity.value = 0.5f;
            bees.volume = 0.7f;
            yield return new WaitForSeconds(0.2f);
            chrome.intensity.value = 1f;
            sonicQueen.Play();
            bees.volume = 0.5f;
            yield return new WaitForSeconds(0.2f);
            chrome.intensity.value = 0.5f;
            bees.volume = 0.3f;
            yield return new WaitForSeconds(0.2f);
            chrome.intensity.value = 0f;
            sonicQueen.Play();
            bees.Stop();
            ppVolume5 = true;
        }
    }
}
