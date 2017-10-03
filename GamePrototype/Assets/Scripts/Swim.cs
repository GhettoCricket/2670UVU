using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class Swim : MonoBehaviour {

	public static Action _Swim;
	public static Action Surface;


	void OnTriggerEnter(Collider other)
	{
		if(other.tag == "Player")
		{
			_Swim();
		}
	}

	void OnTriggerExit (Collider other)
	{
		if(other.tag == "Player")
		{
			Surface();
		}
	}
}
