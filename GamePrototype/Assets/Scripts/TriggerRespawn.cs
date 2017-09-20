using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TriggerRespawn : MonoBehaviour {

	public Transform Player;
	public Transform Respawn;

	void OnTriggerEnter(Collider Cl)
	{
		
		Player.transform.position = Respawn.transform.position;
	}

}
