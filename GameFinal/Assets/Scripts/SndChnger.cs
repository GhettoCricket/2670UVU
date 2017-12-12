using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class SndChnger : MonoBehaviour {

	public static Action Soundoff;
	public static Action Soundon;

	void OnTriggerEnter(Collider other)
	{
		Soundoff();
		
		Soundon();
	}
}
