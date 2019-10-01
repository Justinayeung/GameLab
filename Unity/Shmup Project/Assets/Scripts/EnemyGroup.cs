using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyGroup  : MonoBehaviour
{
    public GameObject DeathParticles;
    public GameObject DeathParticlesPlayer;
    public GameObject RespawnParticles;

    void OnTriggerEnter2D(Collider2D other)
    {
        if (other.CompareTag("Hive"))
        {
            CameraShake.Shake(0.2f, 0.5f);
            Destroy(gameObject);
        }

        if (other.CompareTag("Bullet"))
        {
            Instantiate(DeathParticles, transform.position, Quaternion.identity);
            Destroy(other.gameObject);
            Destroy(gameObject);
        }

        if (other.CompareTag("Player"))
        {
            Instantiate(DeathParticles, transform.position, Quaternion.identity);
            Instantiate(DeathParticlesPlayer, other.gameObject.transform.position, Quaternion.identity);
            Instantiate(RespawnParticles, new Vector2(0, 0), Quaternion.identity);
            Destroy(gameObject);
            other.gameObject.transform.position = new Vector2(0, 0);
        }
    }
}
