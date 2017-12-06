using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyBehavior : MonoBehaviour {

	public GameObject DestructedV;
	public GameObject SoundDestroy;
	private AudioSource Source;
	private bool hasPlayed = false;

	void Start()
	{
		Source = GetComponent<AudioSource>();
	}
	void OnTriggerEnter(Collider other)
	{
		if(hasPlayed == false)
		{
		Source.Play();
		hasPlayed = true;
		}
		DestructedV.SetActive(false);
		GameData.Instance.CoinCount += 100;
		StartCoroutine(SoundD());
	}
	IEnumerator SoundD()
	{
		yield return new WaitForSeconds(.5f);
		SoundDestroy.SetActive(false);
	}
}
