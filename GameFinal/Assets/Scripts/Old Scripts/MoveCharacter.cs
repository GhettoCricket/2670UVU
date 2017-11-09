using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(CharacterController))]

public class MoveCharacter : MonoBehaviour {

	CharacterController cc;
	public static Vector3 tempMove;
	private int jumpCount = 2;
	private Vector3 ZLock;
	public static GameData.PlayerState State;


    void Start () {
		cc = GetComponent<CharacterController>();
		MoveInput.JumpAction = Jump;
		MoveInput.KeyAction += Move;
		MoveInput.GPound += GroundPound;
	}
	void OnDisable()
	{
		MoveInput.JumpAction -= Jump;
		MoveInput.KeyAction -= Move;
		MoveInput.GPound -= GroundPound;
	}

	void Jump() {
		if ( jumpCount != 0)
		{
			tempMove.y = GameData.Instance.jumpHeight;
			jumpCount -= 1;
		}	
	}
	void GroundPound()
	{
		State = GameData.PlayerState.GPOUND;
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
			StartCoroutine(GpoundWait());
		}

		switch(State)
		{
			case GameData.PlayerState.RUN:
			GameData.Instance.speed = 10;
			GameData.Instance.gravity = 2;
			break;
			case GameData.PlayerState.BOOST:
			GameData.Instance.speed = 20;
			break;
			case GameData.PlayerState.DRAG:
			GameData.Instance.speed = 5;
			break;
			case GameData.PlayerState.GPOUND:
			GameData.Instance.gravity = 6;
			break;
		}
	}
	IEnumerator GpoundWait()
	{
		yield return new WaitForSeconds(3);
		State = GameData.PlayerState.RUN;
	}
}
