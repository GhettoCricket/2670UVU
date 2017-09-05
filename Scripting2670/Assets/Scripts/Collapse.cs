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
	DfltPosition.transform.position = CPosition.transform.position;
	MoveInput.Reset += _Reset;
	
}

void OnTriggerEnter(Collider Cl)
{
	if(Cl.tag == "Player")
	{
		Rb.isKinematic = false;
	}
}
public void _Reset()
{		
	print("It's Working!");
}

	
}
