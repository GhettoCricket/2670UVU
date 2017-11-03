using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class ScoreHandler : MonoBehaviour {

	private Text Display;
	void Start()
	{
		Display = GetComponent<Text>();
	}
	void Update()
	{
		Display.text = GameData.Instance.CoinCount.ToString();
	}
	void OnDisable()
	{
		GameData.Instance.CoinCount = 0;
	}
}
