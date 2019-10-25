using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Respawn : MonoBehaviour
{
    public Transform iceRespawn;
    public Transform trapRespawn;
    public Transform chainRespawn;
    public Transform grassRespawn;

    void OnCollisionEnter(Collision other)
    {
        if (other.gameObject.CompareTag("IcePlayer"))
        {
            other.transform.position = iceRespawn.position;
        }

        if (other.gameObject.CompareTag("TrapPlayer"))
        {
            other.transform.position = trapRespawn.position;
        }

        if (other.gameObject.CompareTag("ChainPlayer"))
        {
            other.transform.position = chainRespawn.position;
        }

        if (other.gameObject.CompareTag("GrassPlayer"))
        {
            other.transform.position = grassRespawn.position;
        }

        if(other.gameObject.CompareTag("Trash"))
        {
            Destroy(other.gameObject);
        }
    }
}
