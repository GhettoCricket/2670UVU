﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
public class MoveInput : MonoBehaviour {

	public static Action<float> KeyAction;
	public static float runtime = 0.01f;
	public static Action JumpAction;
	public static Action Respawn;
	public static bool canPlay = true;

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
				yield return new WaitForSeconds(runtime);
			
			}
		}
	}
	
