using System.Collections;
using System.Collections.Generic;
using UnityEngine;


[RequireComponent(typeof(Rigidbody))]
public class FallingObject : MonoBehaviour {

	private Rigidbody _Rigidbody;

	void Start()
	{
		_Rigidbody = GetComponent<Rigidbody>();
	}
	void OnTriggerEnter(Collider other)
	{
		if(other.tag == "Player")
		{
			_Rigidbody.isKinematic = false;
		}
	}
	
		
	

}
