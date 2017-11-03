using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class RaiseInput : MonoBehaviour {

	public static Action RaiseUP;

	void OnTriggerStay(Collider Cl)
	{
		if(Cl.tag == "Player" && Input.GetKey(KeyCode.E))
		{
			RaiseUP();
		}
	}
}
