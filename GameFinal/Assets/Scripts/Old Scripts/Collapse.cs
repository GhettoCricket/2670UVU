using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Collapse : MonoBehaviour {

public Rigidbody Rb;
public Transform DfltPosition;
public Transform CPosition;

void Start()
{
	CPosition = GetComponent<Transform>();
	DfltPosition.position = CPosition.position;
}

void OnTriggerEnter(Collider Cl)
{
	if(Cl.tag == "Player")
	{
		Rb.isKinematic = false;
	}
}
public void _Reset()
{	if(CPosition.position.y < -50)	
	{
		Rb.isKinematic = true;
		CPosition.position = DfltPosition.position;
 		print("It's Working!");
	}
	
}

	
}
