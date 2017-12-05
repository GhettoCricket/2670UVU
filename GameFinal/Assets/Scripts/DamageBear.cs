using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DamageBear : MonoBehaviour {

	private Animator animator;
	private float boff = .6f;
	public int Bhealth = 3;
	private bool canhurt = true;
	public GameObject Bear;

	void Start()
	{
		animator = GetComponentInParent<Animator>();
	}
	void OnTriggerEnter(Collider other)
	{
		if(canhurt && Bhealth !=0)
		StartCoroutine(HurttheBear());
		else if (Bhealth <= 0)
		{
			Bear.SetActive(false);
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
		MoveCharacter.tempMove.y = boff;
		yield return new WaitForSeconds(2);
		Bhealth -= 1;
		canhurt = true;
	}
}
