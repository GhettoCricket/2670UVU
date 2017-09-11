using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(CharacterController))]

public class MoveCharacter : MonoBehaviour {

	CharacterController cc;
	Vector3 tempMove;
	public Vector3  VCrouch;
	public Vector3  VStand;

    public float speed = 5;
	public float gravity;
	public float jumpHeight = 0.2f;
	public static float jumpCount = 2;
	public Transform player;
	public Transform Respawn;

    void Start () {
		cc = GetComponent<CharacterController>();
		PlayButton.Play += OnPlay;
	}
	void OnPlay (){
		MoveInput.JumpAction = Jump;
		MoveInput.KeyAction += Move;
		MoveInput.Crouch += _Crouch;
		MoveInput.Stand += _Stand;
		MoveInput.Respawn = _Respawn;
		PlayButton.Play -= OnPlay;
		
	}
	void Jump() {
		if (cc.isGrounded == true)
		{
			jumpCount = 2;
		}
		if ( jumpCount != 0)
		{
			tempMove.y = jumpHeight;
			jumpCount -= 1;
			print(jumpCount);
			
		}
		
		
	}

	void Move (float _movement) {
		if(cc.isGrounded == true)
		{
			gravity = 0;
		}
		else{
			gravity = 1;
		}
		tempMove.y -= gravity*Time.deltaTime;
		tempMove.x = _movement*speed*Time.deltaTime;
		cc.Move(tempMove);
	}
	void _Respawn()
			{
				if(player.position.y <= -50)
				{
					player.transform.position = Respawn.transform.position;
				}
			}
	void _Crouch()
	{
		cc.radius = .31f;
		cc.height = .5f;
		transform.localScale = VCrouch;
		print("Crouch");
	}
	void _Stand()
	{
		cc.radius = .62f;
		cc.height = 1;
		transform.localScale = VStand;
		print("Standing");
	}
}
