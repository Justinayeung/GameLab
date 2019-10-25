using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraLook : MonoBehaviour
{
	void Update()
	{
        float lookUp = Input.GetAxis("Mouse Y");
        transform.Rotate(Vector3.left*lookUp*2);
	}
}
