using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class SlowMovement : MonoBehaviour {

	public static Action Slow;
	public static Action NormalSpd;
	
	void OnTriggerEnter(Collider C)
	{
		Slow();
		print("slow");
	}
	
	 void OnTriggerExit(Collider c)
	 {
	 	NormalSpd();
	 }

	
}
