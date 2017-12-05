using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class L_EnemyBehavior : MonoBehaviour {

public GameObject DestructedV;
public static float bounce = .5f;

	void OnTriggerEnter(Collider other)
	{
		if(MoveCharacter.State == GameData.PlayerState.GPOUND)
		{
			DestructedV.SetActive(false);
			GameData.Instance.CoinCount += 500;
		}
		else
		{
			MoveCharacter.tempMove.y = bounce;
		}

		
	}
}
