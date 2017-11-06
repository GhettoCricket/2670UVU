using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(CharacterController))]

public class MoveCharacter : MonoBehaviour {

	CharacterController cc;
	Vector3 tempMove;
	private int jumpCount = 2;
	private Vector3 ZLock;
	public GameData.PlayerSpeed Speed;


    void Start () {
		cc = GetComponent<CharacterController>();
		MoveInput.JumpAction = Jump;
		MoveInput.KeyAction += Move;
	}
	void OnDisable()
	{
		MoveInput.JumpAction -= Jump;
		MoveInput.KeyAction -= Move;
	}

	void Jump() {
		if ( jumpCount != 0)
		{
			tempMove.y = GameData.Instance.jumpHeight;
			jumpCount -= 1;
		}	
	}

	void Move (float _movement) 
	{
		ZLock = transform.position;
		ZLock.z = 0f;
		transform.position = ZLock;
		tempMove.y -= GameData.Instance.gravity*Time.deltaTime;
		tempMove.x = _movement*GameData.Instance.speed*Time.deltaTime;
		cc.Move(tempMove);
		if (cc.isGrounded == true)
		{
			jumpCount = 2;
		}

		switch(Speed)
		{
			case GameData.PlayerSpeed.RUN:
			GameData.Instance.speed = 10;
			break;
			case GameData.PlayerSpeed.BOOST:
			GameData.Instance.speed = 20;
			break;
			case GameData.PlayerSpeed.DRAG:
			GameData.Instance.speed = 5;
			break;
		}
	}
}
