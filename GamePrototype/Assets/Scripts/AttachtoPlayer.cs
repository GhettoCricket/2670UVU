using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AttachtoPlayer : MonoBehaviour {

	Transform attachObject;
	Rigidbody _Rigidbody;
	public Vector3 ThrowV;
	bool isAttached = false;
	bool inAir = true;

	void Awake()
	{
		SendAttach.SendAttachPoint += AttachPointHandler;
		_Rigidbody = GetComponent<Rigidbody>();

		
	}
	void AttachPointHandler (Transform _transform)
	{
		attachObject = _transform;
	}

	void OnTriggerStay(Collider other)
	{
		if(Input.GetKeyDown(KeyCode.E) && other.tag == "Player" && isAttached == false)
		{
			_Rigidbody.isKinematic = true;
			transform.parent = attachObject;
			transform.localPosition = Vector3.zero;
			transform.localRotation = Quaternion.identity;
			isAttached = true;
		}
		if (Input.GetKeyDown(KeyCode.R) && isAttached == true)
		{
			transform.parent = null;
			_Rigidbody.isKinematic = false;
			isAttached = false;
			inAir = true;
			StartCoroutine(ThrowDistance());
		}
		
	}
	IEnumerator ThrowDistance()
		{
			ThrowV.x = .2f;
			ThrowV.y = .1f;
			while(inAir && isAttached == false)
			{
				ThrowV.x -= 0.1f*Time.deltaTime;
				ThrowV.y -= 0.1f*Time.deltaTime;
				transform.Translate(ThrowV);
				if(ThrowV.x <= 0f)
				{
					inAir = false;
				}
				yield return new WaitForSeconds(0.01f);
			}

			
		}
}
