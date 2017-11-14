using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class AnimController : MonoBehaviour {

	// Use this for initialization

	public static Animator animator;
	CharacterController cc;
	private float Movefloat_X;
	private float Movefloat_Y;
	void Start () {
		animator = GetComponent<Animator>();
		cc = GetComponent<CharacterController>();
		MoveInput.KeyAction += Animate;
	}
	
	private void Animate(float obj)
	{	
		Movefloat_Y = cc.velocity.y;
		Movefloat_X = Mathf.Abs(MoveCharacter.tempMove.x*7);
		animator.SetFloat("Velocity_X", Movefloat_X);
		animator.SetFloat("Velocity_Y", Movefloat_Y);
	}

	void OnDisable()
	{
		MoveInput.KeyAction -= Animate;
	}
}
