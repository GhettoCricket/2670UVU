using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Destruction : MonoBehaviour 
{
	public GameObject DestructedV;

	void OnTriggerEnter(Collider other)
	{
		if(MoveCharacter.State == GameData.PlayerState.GPOUND)
		{
		Instantiate(DestructedV , transform.position, transform.rotation);
		Destroy(gameObject);
		}
	}
}
