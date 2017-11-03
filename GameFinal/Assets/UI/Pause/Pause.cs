using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class Pause : MonoBehaviour 
{
	public GameObject Menu;
	private int pause;

	void Update()
	{
		if(Input.GetKeyDown(KeyCode.Escape))
		{
			if(Menu.activeInHierarchy == false)
			{
				MoveInput.canPlay = false;
				Menu.SetActive(true);
				Time.timeScale = 0;
			}
			else
			{
				Menu.SetActive(false);
				MoveInput.canPlay = true;
				StartCoroutine(MoveInput.RunInput());
				Time.timeScale = 1;
			}
		}
	}
	void OnDisable()
	{
		MoveInput.canPlay = true;
		Time.timeScale = 1;
	}
}