using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class BearMove : MonoBehaviour {

	
	public Transform _destination;
	public Transform DistractedPos;
	public Vector3 IdlePosition;
	
	public bool CanMove = false;
	public bool _Distracted = false;

	NavMeshAgent _naveMeshAgent;

	void Start()
	{
		_naveMeshAgent = this.GetComponent<NavMeshAgent>();
		BearTrigger.BearEncounter += StartMove;
		BearTrigger.RunAway += StopMove;
		BearTrigger.Distracted += Distracted;

		if (_naveMeshAgent == null)
		{
			Debug.LogError("The nave mesh agent component is not attached to " + gameObject.name);
			
		}	
		
	}
	void OnDisable()
	{
		BearTrigger.BearEncounter -= StartMove;
		BearTrigger.RunAway -= StopMove;
		BearTrigger.Distracted -= Distracted;
	}


	IEnumerator UpdateDestination ()
	{
		while (CanMove)
		{
			Vector3 targetVector = _destination.transform.position;
			_naveMeshAgent.SetDestination(targetVector);
			yield return new WaitForSeconds(0.1f);
		}
		while (_Distracted)
		{
			Vector3 targetVector = DistractedPos.transform.position;
			_naveMeshAgent.SetDestination(targetVector);
			yield return new WaitForSeconds(0.1f);
		}

		
	}
	public void StartMove ()
	{
		if(_Distracted != true)
		{
			CanMove = true;
			StartCoroutine(UpdateDestination());
		}
	}
	public void StopMove()
	{
		CanMove = false;
		_Distracted = false;
		_naveMeshAgent.SetDestination(IdlePosition);
	}
	public void Distracted()
	{
		_Distracted = true;
		StartCoroutine(UpdateDestination());
	}

}
