using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class L_EnemyBehavior : MonoBehaviour {

public GameObject DestructedV;
public static float bounce = .5f;
public GameObject SoundDestroy;
private AudioSource Source;
private bool hasPlayed = false;

void Start()
{
	Source = GetComponent<AudioSource>()
;}

void OnTriggerEnter(Collider other)
	{
		if(MoveCharacter.State == GameData.PlayerState.GPOUND)
		{
			if(hasPlayed == false)
		{
			Source.Play();
			hasPlayed = true;
		}
			DestructedV.SetActive(false);
			GameData.Instance.CoinCount += 500;
			StartCoroutine(SoundD());
		}
		else
		{
			MoveCharacter.tempMove.y = bounce;
		}

		
	}
		IEnumerator SoundD()
	{
		yield return new WaitForSeconds(.5f);
		SoundDestroy.SetActive(false);
	}
}
