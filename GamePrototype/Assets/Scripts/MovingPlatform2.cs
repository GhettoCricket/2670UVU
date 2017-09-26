using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovingPlatform2 : MonoBehaviour {

	public Transform PosOne;
	public Transform PosTwo;

	public float PlatSpeed;

	public GameObject Player;
	public float Delay;
	Vector3 MoveLR;
	bool CanMove = true;

	void Start()
	{
		MoPlatInput2.PlatformStart += StartPlatforms;
 	}
	void StartPlatforms()
	{
		StartCoroutine(Move());
		MoPlatInput2.PlatformStart -= StartPlatforms;
	}
	void OnTriggerEnter(Collider Cl)
	{
		if(Cl.tag == "Player")
		{
			Player.transform.parent = this.transform;
			print("Parent");

		}
	}
	void OnTriggerExit(Collider Cl)
	{
		if(Cl.tag == "Player")
		{
			Player.transform.parent = null;
			print("Exit");
		}
		
	}

	IEnumerator Move()
	{
		while (CanMove)
		{
		MoveLR.x = 0f;
		yield return new WaitForSeconds(Delay);
		while(this.transform.position.x >= PosTwo.position.x)
		{
			
			MoveLR.x = -PlatSpeed*Time.deltaTime;
			transform.Translate(MoveLR);
			yield return null;
		}
		MoveLR.x = 0f;
		yield return new WaitForSeconds(Delay);
		while(this.transform.position.x <= PosOne.position.x)
		{
			MoveLR.x = PlatSpeed*Time.deltaTime;
			transform.Translate(MoveLR);
			yield return null;
		}
		}
	}
}
