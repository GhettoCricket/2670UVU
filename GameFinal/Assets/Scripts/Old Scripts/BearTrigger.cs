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
		if(BearEncounter != null)
		BearEncounter();	
	}
	void OnTriggerExit(Collider Cl)
	{	
		if(RunAway != null)
		RunAway();
		print("IdlePos");	
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
