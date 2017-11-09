using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GetData : MonoBehaviour {

	// Use this for initialization
	void Start () 
	{
		GameData.Instance.health = 1;
	}
	void OnApplicationQuit()
	{
		//GameData.SetData();
	}
	

}
