using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(CharacterController))]

public class MoveCharacter : MonoBehaviour {

	CharacterController cc;
	Vector3 tempMove;
	//public Vector3  VCrouch;
	///public Vector3  VStand;

    public float speed;
	public float gravity;
	public float jumpHeight = 0.2f;
	public static float jumpCount = 2;
	public Transform player;
	public Transform Respawn;
	private Vector3 ZLock;
	public bool isSlow = false;
	bool isSwimming = false;

    void Start () {
		cc = GetComponent<CharacterController>();
		MoveInput.JumpAction = Jump;
		MoveInput.KeyAction += Move;
		SlowMovement.Slow += SlowMvmnt;
		SlowMovement.NormalSpd += setNrmlMvmnt;
		Swim._Swim += SwimHandler;
		Swim.Surface += SurfaceHandler;
		//MoveInput.Crouch += _Crouch;
		//MoveInput.Stand += _Stand;
	}

	void Jump() {
		if (cc.isGrounded == true || isSwimming == true)
		{
			jumpCount = 2;
		}
		if ( jumpCount != 0)
		{
			tempMove.y = jumpHeight;
			jumpCount -= 1;

		}
		
		
	}

	void Move (float _movement) {

		ZLock = transform.position;
		if(cc.isGrounded == true && isSwimming == false)
		{
			gravity = 0;
		}
		if(isSwimming == true)
		{
			gravity = 0.2f;
			jumpHeight = 0.15f;
		}
		else if (isSwimming == false)
		{
			gravity = 1;
			jumpHeight = 0.3f;
		}
		if(Input.GetKey(KeyCode.LeftShift) && cc.isGrounded && isSlow == false && isSwimming == false)
		{
			speed = 10;
		}
		else if (isSlow == false)
		{
			speed = 5;
		}
		else if (isSlow == true)
		{
			speed = 2.5f;
		}
		ZLock.z = 0.51f;
		transform.position = ZLock;
		tempMove.y -= gravity*Time.deltaTime;
		tempMove.x = _movement*speed*Time.deltaTime;
		cc.Move(tempMove);
	}
	void SlowMvmnt()
	{
		isSlow = true;
	}
	void setNrmlMvmnt()
	{
		isSlow = false;
	}
	
	void SwimHandler()
	{
		isSwimming = true;
	}
	void SurfaceHandler()
	{
		isSwimming = false;
	}
	//void _Crouch()
	//{
	//	cc.radius = .31f;
	//	cc.height = .5f;
	//	transform.localScale = VCrouch;
	//	print("Crouch");
	//}
	//void _Stand()
	//{
	//	cc.radius = .62f;
	//	cc.height = 1;
	//	transform.localScale = VStand;
	//	print("Standing");
	//}
}
