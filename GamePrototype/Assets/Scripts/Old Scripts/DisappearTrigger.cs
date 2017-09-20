using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DisappearTrigger : MonoBehaviour {

	 void OnTriggerEnter(Collider C)
	{
		if(C.tag == "Player")
		{
          Destroy(gameObject , 0.2f);
		}
		
	}
}
