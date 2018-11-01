using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MoveShot : MonoBehaviour
{
    public float shotSpeed;

	void Update ()
    {
        transform.Translate(Vector3.forward * Time.deltaTime * shotSpeed);

        if (transform.position.x < -37 || transform.position.x > 37 || transform.position.z < -17 || transform.position.z > 17)
        {
            Destroy(this.gameObject);
        }
	}
}
