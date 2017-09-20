using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class MovingPlatform : MonoBehaviour {

	public float MoveDistanceL;
	public float MoveDistanceR;
	Vector3 MoveLR;

	void Start()
	{
		StartCoroutine(Move());
	}

	IEnumerator Move()
	{
		while(MoveLR.x > MoveDistanceL)
		{
			print(MoveLR.x);
			MoveLR.x -= 0.1f*Time.deltaTime;
			transform.Translate(MoveLR);
			yield return new WaitForSeconds(0.01f);
		}
		while(MoveLR.x < MoveDistanceR)
		{
			print(MoveLR.x);
			MoveLR.x += 0.1f*Time.deltaTime;
			transform.Translate(MoveLR);
			yield return new WaitForSeconds(0.01f);
		}
	}
}
