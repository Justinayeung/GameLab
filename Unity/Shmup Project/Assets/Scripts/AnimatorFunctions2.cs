using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimatorFunctions2 : MonoBehaviour
{
	[SerializeField] MenuButtonController2 menuButtonController;
	public bool disableOnce;

	void PlaySound(AudioClip whichSound){
		if(!disableOnce){
			menuButtonController.audioSource.PlayOneShot (whichSound);
		}else{
			disableOnce = false;
		}
	}
}	
