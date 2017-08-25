using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class MoveInput : MonoBehaviour {

    Action KeyAction;

	// Use this for initialization
	void Start () {
        KeyAction = Move;
	}

    void Move ()
    {
        print("Go left you bastard");
    }

    // Update is called once per frame
    void Update () {
        if (Input.GetKey(KeyCode.LeftArrow))
        {
            KeyAction();
        }
	}
}
