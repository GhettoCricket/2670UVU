using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

[RequireComponent(typeof(NavMeshAgent))]
public class FishMove : MonoBehaviour 
{
	
	public Transform IdlePos1;
	public Transform IdlePos2;
	public Transform IdlePos3;
	
	private NavMeshAgent Agent;
    
	private bool isPos1 = false;
	private bool isPos2 = false;
	private bool isPos3 = false;

    void Start()
	{
		Agent = GetComponent<NavMeshAgent>();
		
	}
	
	IEnumerator RunAway ()
	{
		while (isPos1)
		{
			Vector3 targetVector = IdlePos1.transform.position;
			Agent.SetDestination(targetVector);
			yield return new WaitForSeconds(0.1f);
		}
		while (isPos2)
		{
			Vector3 targetVector = IdlePos2.transform.position;
			Agent.SetDestination(targetVector);
			yield return new WaitForSeconds(0.1f);
		}
		while (isPos3)
		{
			Vector3 targetVector = IdlePos3.transform.position;
			Agent.SetDestination(targetVector);
			yield return new WaitForSeconds(0.1f);
		}
	}
	void OnTriggerEnter(Collider other)
	{
		if(other.tag == "Player")
		{
			if(isPos1 == false && isPos2 == false)
			{
				isPos1 = true;
				isPos3 = false;
				isPos2 = false;
			}
			else if(isPos2 == false)
			{
				isPos1 = false;
				isPos2 = true;
				isPos3 = false;
			}
			else if(isPos3 == false)
			{
				isPos2 = false;
				isPos3 = true;
				isPos1 = false;
			}
			StartCoroutine(RunAway());
		}
	}
}

