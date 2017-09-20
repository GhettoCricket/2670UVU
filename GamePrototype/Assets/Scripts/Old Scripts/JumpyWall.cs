using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class JumpyWall : MonoBehaviour {

	// Use this for initialization

	 void OnTriggerEnter(Collider C)
	{
		if(C.tag == "Player")
		{
			MoveCharacter.jumpCount = 2;
		}
		
	}
}
