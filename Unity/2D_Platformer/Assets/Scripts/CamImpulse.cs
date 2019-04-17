using System.Collections;
using System.Collections.Generic;
using Cinemachine;
using UnityEngine;

public class CamImpulse : MonoBehaviour
{
    public float shakeDuration = 0.3f;
    public float shakeAmpliture = 1.3f;
    public float shakeFrequency = 2.0f;
    private float shakeTime = 0f;
    public CinemachineVirtualCamera virtualCam;
    public CinemachineBasicMultiChannelPerlin virtualNoise;

    void Start()
    {
        if (virtualCam != null)
        {
            virtualNoise = virtualCam.GetCinemachineComponent<Cinemachine.CinemachineBasicMultiChannelPerlin>();
        }
    }
}
