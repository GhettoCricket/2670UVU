using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
public class Start : MonoBehaviour {

	public void StartButton(string Level1)
	{
		SceneManager.LoadScene(Level1);
	}
	
	

}
