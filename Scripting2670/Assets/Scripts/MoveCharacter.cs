using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class MoveCharacter : MonoBehaviour {

	CharacterController cc; 
	// Use this for initialization
	Vector3 tempMove;
	private float speed = 5;
	void Start () {
		cc = GetComponent<CharacterController> ();
	  MoveInput.KeyAction = Move;
	}
	
	// Update is called once per frame
	void Move (float _movement) {
		print(_movement);
		tempMove.x = _movement*speed*Time.deltaTime;
		cc.Move(tempMove);
	}
}
