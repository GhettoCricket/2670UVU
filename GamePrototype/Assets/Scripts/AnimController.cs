using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimController : MonoBehaviour {

	// Use this for initialization

	Animator animator;
	void Start () {
		animator = GetComponent<Animator>();
		MoveInput.KeyAction += Animate;
	}
	
	private void Animate(float obj)
	{
		animator.SetFloat("speedPercent" , obj);
	}

	void OnDisable()
	{
		MoveInput.KeyAction -= Animate;
	}
}
