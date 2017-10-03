using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class BearTrigger : MonoBehaviour {

	public static Action BearEncounter;
	public static Action RunAway;
	public static Action Distracted; 
	void OnTriggerEnter(Collider Cl)
	{
		if(Cl.tag == "Player")
		{
			print("BEAR!");
			BearEncounter();
		}
	}
	void OnTriggerExit(Collider Cl)
	{
		if(Cl.tag == "Player" || Cl.tag == "Distraction")
		{
		print("RUNAWAY!");
		RunAway();
		}
	}
	void OnTriggerStay(Collider other)
	{
		if(other.tag == "Distraction")
		{
			print("Distracted");
			Distracted();
		}
	}
	
}
