using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EndManager : MonoBehaviour
{
    public GameObject hive;
    public GameObject MainMenu;
    public GameObject MainGame;
    public GameObject EndMenu;
    public GameObject WinMenu;
    public GameObject controlMenu;
    private GameObject enemies;
    private GameObject queen;
    private GameObject flowers;
    public Enemy4 enemy;
    public EnemySpawn spawn;

    void Update()
    {
        queen = GameObject.FindGameObjectWithTag("Boss");
        enemies = GameObject.FindGameObjectWithTag("Enemy");
        flowers = GameObject.FindGameObjectWithTag("Flower");
        if (spawn.Level5 == true)
        {
            enemy = GameObject.FindGameObjectWithTag("Boss").GetComponent<Enemy4>();
        }

        if (hive == null)
        {
            MainMenu.SetActive(false);
            WinMenu.SetActive(false);
            controlMenu.SetActive(false);
            StartCoroutine(death());
        }

        if (Input.GetKey("escape") || Input.GetButton("Quit"))
        {
            Application.Quit();
            Debug.Log("quit");
        }

        if (enemy.dead == true)
        {
            MainMenu.SetActive(false);
            EndMenu.SetActive(false);
            controlMenu.SetActive(false);
            StartCoroutine(win());
        }
    }

    IEnumerator death()
    {
        yield return new WaitForSeconds(0.5f);
        Destroy(flowers);
        Destroy(enemies);
        EndMenu.SetActive(true);
        MainGame.SetActive(false);
    }

    IEnumerator win()
    {
        yield return new WaitForSeconds(0.5f);
        Destroy(flowers);
        Destroy(enemies);
        WinMenu.SetActive(true);
        MainGame.SetActive(false);
    }
}
