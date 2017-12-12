using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class AwakeSound : MonoBehaviour {

	private AudioSource Source;

	// Use this for initialization
	void Start () {
		Source = GetComponent<AudioSource>();
		Source.Play();
		SndChnger.Soundoff += StopSound;
	}

	void StopSound()
	{
		Source.Stop();
	}

	void OnDisable()
	{
		SndChnger.Soundoff -= StopSound;
	}
	
}
