using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HealthHandler : MonoBehaviour {

	public Image healthBar;

	void Update()
	{
		healthBar.fillAmount = GameData.Instance.health;
	}
}
