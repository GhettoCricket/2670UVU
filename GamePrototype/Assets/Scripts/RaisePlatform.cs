using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RaisePlatform : MonoBehaviour {

Vector3 Raiseup;
public float RaiseDistance;

 void Start()
 {
	 RaiseInput.RaiseUP += _RaisePlatform;	 
 }
 void OnDisable()
 {
	 RaiseInput.RaiseUP -= _RaisePlatform;
 }
  IEnumerator Raise ()
	{
		while(Raiseup.y < RaiseDistance)
		{
			print("Open");
			Raiseup.y += 0.1f*Time.deltaTime;
			transform.Translate(Raiseup);
			yield return new WaitForSeconds(0.01f);
		}
		
	}
	void _RaisePlatform()
{
	StartCoroutine(Raise());
}
}

