using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
public class GhostMove : MonoBehaviour {

	public Transform _destination;
	public Vector3 IdlePosition;

	NavMeshAgent _naveMeshAgent;
	public bool CanMove = true;

	
	void Start () 
	{
		_naveMeshAgent = this.GetComponent<NavMeshAgent>();

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
	void OnTriggerEnter(Collider other)
	{
		if(other.name == "GhostTrigger")
		{
			StartCoroutine(UpdateDestination());
		}
	}

}
