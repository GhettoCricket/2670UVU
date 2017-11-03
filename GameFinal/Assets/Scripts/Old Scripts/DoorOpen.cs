using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DoorOpen : MonoBehaviour {

	public Vector3 Open;
	public GameObject Key;
	void OnTriggerEnter(Collider Cl)
	{
		if(Cl.gameObject == Key)
		{
		print("open");
		StartCoroutine(OpenDoor());
		Destroy(Key);
		}
		else
		{
			print(Cl);
		}
	}

	IEnumerator OpenDoor ()
	{
		while(Open.y < 0.15f)
		{
			print("Open");
			Open.y += 0.1f*Time.deltaTime;
			transform.Translate(Open);
			yield return new WaitForSeconds(0.01f);
		}
		
	}
}
