using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class BearTrigger : MonoBehaviour {

	public static Action BearEncounter;
	public static Action RunAway;
	void OnTriggerEnter(Collider Cl)
	{
		if(Cl.tag == "Bear")
		{
			print("BEAR!");
			BearEncounter();
		}
	}
	void OnTriggerExit(Collider Cl)
	{
		if(Cl.tag == "Bear")
		{
		print("RUNAWAY!");
		RunAway();
		}
	}
	
}
