using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
public class MoveInput : MonoBehaviour {

	public static Action<float> KeyAction;
	public static float runtime = 0.01f;
	public static Action JumpAction;
	public static Action GPound;
	public static bool canPlay = true;
	public static bool isPound;

	void Start()
	{
		StartCoroutine(RunInput());
	}
	
	public static IEnumerator RunInput()
	{
		while (canPlay)
			{
				if (Input.GetKeyDown(KeyCode.Space))
				{
					JumpAction();
				}
				if (KeyAction != null)
				{
					KeyAction(Input.GetAxis("Horizontal"));
				}
				if(Input.GetKey(KeyCode.LeftControl))
				{
					isPound = true;
					GPound();
				}
				yield return new WaitForSeconds(runtime);
			
			}
		}
	}
	
