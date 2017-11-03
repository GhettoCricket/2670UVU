using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Water : MonoBehaviour 
{

	void OnTriggerEnter(Collider C)
	{
		print("I'm Drowing");
	}
	void OnTriggerExit(Collider eC)
	{
		print("Land Ho!");
	}
	
	
}
