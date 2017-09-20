using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class MoPlatInput : MonoBehaviour {

public static Action PlatformStart;

	void OnTriggerStay(Collider Cl)
	{
		if(Cl.tag == "Player" && Input.GetKey(KeyCode.E))
		{
			if(PlatformStart != null)
			{
				PlatformStart();
			}
			
		}
	}

}
