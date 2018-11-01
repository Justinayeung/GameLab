using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CheckForCollision : MonoBehaviour
{
    float timer;
    public string danger;

    void Start()
    {
        timer = 2f;
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Shot")
        {
            float currHp = GetComponent<MoveAsteroid>().hp;
            if (currHp > 0)
            {
                currHp--;
                transform.localScale = new Vector3(currHp * 2, currHp * 2, currHp * 2);
                GetComponent<MoveAsteroid>().hp = currHp;
            }
            else
            {
                Destroy(this.gameObject);
            }
        }

        if (Time.time > timer)
        {
            if (other.gameObject.tag == "Player")
            {
                Debug.Log("Ship Hit");
                Destroy(other.gameObject);
            }
        }
    }
}
