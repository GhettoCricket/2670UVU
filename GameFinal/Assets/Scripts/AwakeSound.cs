using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AwakeSound : MonoBehaviour {

	private AudioSource Source;

	// Use this for initialization
	void Start () {
		Source = GetComponent<AudioSource>();
		Source.Play();
	}
	
}
