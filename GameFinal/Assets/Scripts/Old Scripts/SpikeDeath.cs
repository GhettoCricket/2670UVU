using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpikeDeath : MonoBehaviour {

	void OnTriggerEnter(Collider other)
	{
		GameData.Instance.health -= 1;
	}
}
