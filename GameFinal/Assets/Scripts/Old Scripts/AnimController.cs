using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class AnimController : MonoBehaviour {

	// Use this for initialization

	public static Animator animator;
	private float Movefloat_X;
	private float Movefloat_Y;

	void Start () {
		animator = GetComponent<Animator>();
		MoveInput.KeyAction += Animate;
	}
	
	private void Animate(float obj)
	{	
		Movefloat_Y = MoveCharacter.tempMove.y;
		if(Movefloat_Y < -1)
			Movefloat_Y = -1;
		Movefloat_X = Mathf.Abs(MoveCharacter.tempMove.x*7);
		animator.SetFloat("Velocity_X", Movefloat_X);
		animator.SetFloat("Velocity_Y", Movefloat_Y);
		animator.SetBool("Grounded" , MoveCharacter.isGrounded);
		animator.SetBool("GP" , MoveInput.isPound);
	}

	void OnDisable()
	{
		MoveInput.KeyAction -= Animate;
	}
}
