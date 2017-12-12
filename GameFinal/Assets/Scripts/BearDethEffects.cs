using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BearDethEffects : MonoBehaviour {

	private AudioSource Source;
	private ParticleSystem Party;

	// Use this for initialization
	void Start () {
		Source = GetComponent<AudioSource>();
		Party = GetComponent<ParticleSystem>();
		DamageBear.BearDeth += BearDeth;
	}

	void BearDeth()
	{
		Source.Play();
		Party.Play();
	}

	void OnDisable()
	{
		DamageBear.BearDeth -= BearDeth;
	}
	
}
