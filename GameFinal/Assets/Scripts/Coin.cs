using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Coin : MonoBehaviour {

	public GameObject coin;
	void OnTriggerEnter(Collider other)
	{
		GameData.Instance.CoinCount += 1;
		coin.SetActive(false);
	}
}
