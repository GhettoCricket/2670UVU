using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class SpiderAnim : MonoBehaviour {

	private Animator animator;
	private NavMeshAgent agent;
	private bool Walking = true;
	private float Speed;

	void Start()
	{
		animator = GetComponentInChildren<Animator>();
		agent = GetComponent<NavMeshAgent>();
		StartCoroutine(WalkSpeed());
	}
	IEnumerator WalkSpeed()
	{
		while(Walking)
		{
			Speed = agent.velocity.x;
			Speed = Mathf.Abs(Speed);
			animator.SetFloat("Velocity" , Speed/3);
			yield return new WaitForSeconds(.1f);	
		}
		
	}
	
}
