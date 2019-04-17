using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FlashLightANim : MonoBehaviour
{
    public Sprite lightBright;
    public Sprite lightNorm;
    public SpriteRenderer sr;

    public IEnumerator flashLight()
    {
        sr.sprite = lightBright;
        yield return new WaitForSeconds(1f);
        sr.sprite = lightNorm;
    }
}
