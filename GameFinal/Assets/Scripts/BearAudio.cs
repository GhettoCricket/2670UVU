using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class BearAudio : MonoBehaviour {

	private AudioSource Source;
	void Start () {
		Source = GetComponent<AudioSource>();
		SndChnger.Soundon += StartSound;
	}

	void StartSound()
	{
		Source.Play();
	}

	void OnDisable()
	{
		SndChnger.Soundon -= StartSound;
	}

}
