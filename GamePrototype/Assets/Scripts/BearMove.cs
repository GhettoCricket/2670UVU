using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class BearMove : MonoBehaviour {

	[SerializeField]
	Transform _destination;
	public Vector3 IdlePosition;
	public bool CanMove = false;

	NavMeshAgent _naveMeshAgent;

	void Start()
	{
		_naveMeshAgent = this.GetComponent<NavMeshAgent>();
		BearTrigger.BearEncounter += StartMove;
		BearTrigger.RunAway += StopMove;

		if (_naveMeshAgent == null)
		{
			Debug.LogError("The nave mesh agent component is not attached to " + gameObject.name);
			
		}	
		
	}


	IEnumerator UpdateDestination ()
	{
		while (CanMove)
		{
			Vector3 targetVector = _destination.transform.position;
			_naveMeshAgent.SetDestination(targetVector);
			yield return new WaitForSeconds(0.1f);
		}

		
	}
	public void StartMove ()
	{
		CanMove = true;
		StartCoroutine(UpdateDestination());
	}
	public void StopMove()
	{
		CanMove = false;
		_naveMeshAgent.SetDestination(IdlePosition);
	}

}
