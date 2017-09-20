using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class MovingPlatform : MonoBehaviour {

	public Transform PosOne;
	public Transform PosTwo;
	public float Delay;
	Vector3 MoveLR;
	bool CanMove = true;

	void Start()
	{
		MoPlatInput.PlatformStart += StartPlatforms;
 	}
	void StartPlatforms()
	{
		StartCoroutine(Move());
		MoPlatInput.PlatformStart -= StartPlatforms;
	}

	IEnumerator Move()
	{
		while (CanMove)
		{
		MoveLR.x = 0f;
		yield return new WaitForSeconds(Delay);
		while(this.transform.position.x >= PosTwo.position.x)
		{
			
			MoveLR.x -= 0.1f*Time.deltaTime;
			transform.Translate(MoveLR);
			yield return null;
		}
		MoveLR.x = 0f;
		yield return new WaitForSeconds(Delay);
		while(this.transform.position.x <= PosOne.position.x)
		{
			MoveLR.x += 0.1f*Time.deltaTime;
			transform.Translate(MoveLR);
			yield return null;
		}
		}
	}
}
