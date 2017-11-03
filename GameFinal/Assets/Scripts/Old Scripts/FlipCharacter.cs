using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FlipCharacter : MonoBehaviour {

	Quaternion myRotate;
	Vector3 rotValue;
	void Start () 
	{
	 MoveInput.KeyAction += Flip;
	}
	void OnDisable()
	{
		MoveInput.KeyAction -= Flip;	
	}
	
    private void Flip(float obj)
    {
		if(obj > 0 )
			rotValue.y = 90;

		if(obj < 0)
			rotValue.y = 270;

		myRotate.eulerAngles = rotValue;
        transform.rotation = myRotate; 
    }
}
