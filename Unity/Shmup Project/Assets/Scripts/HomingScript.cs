using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Rigidbody2D))]
public class HomingScript : MonoBehaviour
{
    public Transform target;
    private Rigidbody2D rb;
    public float speed;
    public float rotateSpeed;
    //public LayerMask enemyLayer;
    //private Collider2D closeEnemy;
    public Rigidbody2D bullet;
    public GameObject spawnPoint;
    public GameObject spawnPoint1;
    public GameObject spawnPoint2;
    public GameObject spawnPoint3;
    public GameObject spawnPoint4;
    public GameObject spawnPoint5;
    public GameObject spawnPoint6;
    public GameObject spawnPoint7;
    public float bulletSpeed;
    public SpriteRenderer sr;
    public Color flickerColor;
    public Color originalColor;

    void Start()
    {
        rb = GetComponent<Rigidbody2D>();
        target = GameObject.FindGameObjectWithTag("Enemy").transform;
        StartCoroutine(explode());
    }
     
    void Update()
    {
        target = GameObject.FindGameObjectWithTag("Enemy").transform;
        Vector2 direction = (Vector2)target.position - rb.position;
        direction.Normalize();
        float rotateAmount = Vector3.Cross(direction, transform.up).z;
        rb.angularVelocity = -rotateAmount * rotateSpeed;
        rb.velocity = transform.up * speed;
    }

    IEnumerator explode()
    {
        sr.color = flickerColor;
        yield return new WaitForSeconds(0.05f);
        sr.color = originalColor;
        yield return new WaitForSeconds(1f);
        sr.color = flickerColor;
        yield return new WaitForSeconds(0.05f);
        sr.color = originalColor;
        yield return new WaitForSeconds(0.5f);
        sr.color = flickerColor;
        yield return new WaitForSeconds(.05f);
        sr.color = originalColor;
        yield return new WaitForSeconds(0.3f);
        sr.color = flickerColor;
        yield return new WaitForSeconds(.05f);
        sr.color = originalColor;
        yield return new WaitForSeconds(0.1f);
        sr.color = flickerColor;
        yield return new WaitForSeconds(.05f);
        sr.color = originalColor;
        Rigidbody2D clone;
        clone = Instantiate(bullet, spawnPoint.transform.position, transform.rotation);
        clone = Instantiate(bullet, spawnPoint1.transform.position, transform.rotation);
        clone = Instantiate(bullet, spawnPoint2.transform.position, transform.rotation);
        clone = Instantiate(bullet, spawnPoint3.transform.position, transform.rotation);
        clone = Instantiate(bullet, spawnPoint4.transform.position, transform.rotation);
        clone = Instantiate(bullet, spawnPoint5.transform.position, transform.rotation);
        clone = Instantiate(bullet, spawnPoint6.transform.position, transform.rotation);
        clone = Instantiate(bullet, spawnPoint7.transform.position, transform.rotation);
        clone.GetComponent<Rigidbody2D>().AddForce(transform.up * bulletSpeed * 6);
        yield return new WaitForSeconds(0.5f);
        Destroy(gameObject);
    }
}
