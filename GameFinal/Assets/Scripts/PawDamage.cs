using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PawDamage : MonoBehaviour {

	void OnTriggerEnter(Collider other)
	{
		GameData.Instance.health -= .5f;
		print("Damaged by " + other.name);
	}
}
