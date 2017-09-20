using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AttachtoPlayer : MonoBehaviour {

	Transform attachObject;

	void Awake()
	{
		SendAttach.SendAttachPoint += AttachPointHandler;

		
	}
	void AttachPointHandler (Transform _transform)
	{
		attachObject = _transform;
	}

	void OnTriggerStay(Collider other)
	{
		if(Input.GetKey(KeyCode.E) && other.tag == "Player")
		{
		transform.parent = attachObject;
		transform.localPosition = Vector3.zero;
		transform.localRotation = Quaternion.identity;
		}
	}
}
