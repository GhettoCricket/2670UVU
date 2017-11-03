using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class SendAttach : MonoBehaviour {

	public static Action<Transform> SendAttachPoint;

	void Awake()
	{
		SendAttachPoint(transform);
	}

}
