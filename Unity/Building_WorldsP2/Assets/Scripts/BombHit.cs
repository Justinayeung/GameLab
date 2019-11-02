using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BombHit : MonoBehaviour
{
    public Rigidbody[] rubble;

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Bomb"))
        {
            Debug.Log("HIT");
            rubble[0].AddForce(Vector3.up * 10, ForceMode.Impulse);
            rubble[0].AddForce(Vector3.left * 10, ForceMode.Impulse);
            rubble[1].AddForce(Vector3.up * 10, ForceMode.Impulse);
            rubble[1].AddForce(Vector3.left * 10, ForceMode.Impulse);
            rubble[2].AddForce(Vector3.up * 10, ForceMode.Impulse);
            rubble[2].AddForce(Vector3.left * 10, ForceMode.Impulse);
            rubble[3].AddForce(Vector3.up * 10, ForceMode.Impulse);
            rubble[3].AddForce(Vector3.left * 10, ForceMode.Impulse);
            rubble[4].AddForce(Vector3.up * 10, ForceMode.Impulse);
            rubble[4].AddForce(Vector3.left * 10, ForceMode.Impulse);
            rubble[5].AddForce(Vector3.up * 10, ForceMode.Impulse);
            rubble[5].AddForce(Vector3.left * 10, ForceMode.Impulse);
            rubble[6].AddForce(Vector3.up * 10, ForceMode.Impulse);
            rubble[6].AddForce(Vector3.right * 10, ForceMode.Impulse);
            rubble[7].AddForce(Vector3.up * 10, ForceMode.Impulse);
            rubble[7].AddForce(Vector3.right * 10, ForceMode.Impulse);
            rubble[8].AddForce(Vector3.up * 10, ForceMode.Impulse);
            rubble[8].AddForce(Vector3.right * 10, ForceMode.Impulse);
            rubble[9].AddForce(Vector3.up * 10, ForceMode.Impulse);
            rubble[9].AddForce(Vector3.right * 10, ForceMode.Impulse);
            rubble[10].AddForce(Vector3.up * 10, ForceMode.Impulse);
            rubble[10].AddForce(Vector3.right * 10, ForceMode.Impulse);
            rubble[11].AddForce(Vector3.up * 10, ForceMode.Impulse);
            rubble[11].AddForce(Vector3.right * 10, ForceMode.Impulse);
            Destroy(other.gameObject);
            Destroy(gameObject);
        }
    }
}
