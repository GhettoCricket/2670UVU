using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class DamageBear : MonoBehaviour {

	private Animator animator;
	private float boff = .6f;
	public int Bhealth = 3;
	private bool canhurt = true;
	public GameObject Bear;
	private AudioSource Source;
	public static Action BearDeth;

	void Start()
	{
		animator = GetComponentInParent<Animator>();
		Source = GetComponent<AudioSource>();
	}
	void OnTriggerEnter(Collider other)
	{
		if(canhurt && Bhealth !=0)
		StartCoroutine(HurttheBear());
		else if (Bhealth <= 0)
		{
			Bear.SetActive(false);
			BearDeth();
			MoveCharacter.tempMove.y = boff;
		}
	}
	void OnTriggerExit(Collider other)
	{
		animator.SetBool("isDamaged" , false);
	}
	IEnumerator HurttheBear()
	{
		canhurt = false;
		animator.SetBool("isDamaged", true);
		Source.Play();
		MoveCharacter.tempMove.y = boff;
		yield return new WaitForSeconds(2);
		Bhealth -= 1;
		canhurt = true;
	}
}
