using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Coin : MonoBehaviour {

	public GameObject coin;
	public GameObject Audio;
	private AudioSource Listener;

	void Start()
	{
		Listener = GetComponent<AudioSource>();
	}
	void OnTriggerEnter(Collider other)
	{
		Listener.Play();
		GameData.Instance.CoinCount += 10;
		coin.SetActive(false);
		StartCoroutine(DestroyAudio());	
	}
	IEnumerator DestroyAudio()
	{
		yield return new WaitForSeconds(.5f);
		Audio.SetActive(false);
	}
}
