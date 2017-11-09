using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyBehavior : MonoBehaviour {

	public GameObject DestructedV;

	void OnTriggerEnter(Collider other)
	{
		DestructedV.SetActive(false);
		GameData.Instance.CoinCount += 100;
	}
}
