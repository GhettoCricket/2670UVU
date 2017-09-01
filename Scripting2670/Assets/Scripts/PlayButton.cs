using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class PlayButton : MonoBehaviour {

	public static Action Play; 

	public void PushPlay() {
	Play();
	}
}

