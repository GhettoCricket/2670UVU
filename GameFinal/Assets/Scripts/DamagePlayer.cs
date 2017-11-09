using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DamagePlayer : MonoBehaviour {

	void OnTriggerEnter(Collider other)
	{
		GameData.Instance.health -= .1f;
	}
}
