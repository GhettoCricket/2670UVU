using System.Collections;
using System.Collections.Generic;
using UnityEngine;



public class FallingObject : MonoBehaviour {

	public Rigidbody _Rigidbody;

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
