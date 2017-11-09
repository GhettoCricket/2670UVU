using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraFollow : MonoBehaviour {

	public GameObject player;
	private Vector3 offset;
	public float LerpSpeed = 0.35f;
	
	void Start()
	{
		offset = transform.position - player.transform.position;
		
	}
	void LateUpdate()
	{
		Vector3 CurrentPosition = player.transform.position + offset;
		transform.position = Vector3.Lerp(transform.position, CurrentPosition, LerpSpeed);
	}
}
