using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(CharacterController))]

public class MoveCharacter : MonoBehaviour {

	CharacterController cc;
	Vector3 tempMove;
	private float jumpHeight = 0.6f;
	public Transform player;
	public Transform Respawn;
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
		if (cc.isGrounded == true)
		{
			GameData.Instance.jumpCount = 2;
		}
		if ( GameData.Instance.jumpCount != 0)
		{
			tempMove.y = jumpHeight;
			GameData.Instance.jumpCount -= 1;

		}
		print(GameData.Instance.jumpCount);
		
		
	}

	void Move (float _movement) {

		ZLock = transform.position;
		if(cc.isGrounded == true)
		{
			GameData.Instance.jumpCount = 2;
			GameData.Instance.gravity = 2;
		}
		ZLock.z = 0f;
		transform.position = ZLock;
		tempMove.y -= GameData.Instance.gravity*Time.deltaTime;
		tempMove.x = _movement*GameData.Instance.speed*Time.deltaTime;
		cc.Move(tempMove);


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
