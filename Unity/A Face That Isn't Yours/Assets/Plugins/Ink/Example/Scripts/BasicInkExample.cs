﻿using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using Ink.Runtime;

// This is a super bare bones example of how to play and display a ink story in Unity.
public class BasicInkExample : MonoBehaviour {

    //void Awake () {
    //	// Remove the default message
    //	RemoveChildren();
    //	StartStory();
    //}

    public void startClicked()
    {
        RemoveChildren();
        StartStory();
    }

	// Creates a new Story object with the compiled story which we can then play!
	void StartStory () {
		story = new Story (inkJSONAsset.text);
		StartCoroutine(RefreshView());
	}
	
	// This is the main function called every time the story changes. It does a few things:
	// Destroys all the old content and choices.
	// Continues over all the lines of text, then displays all the choices. If there are no choices, the story is finished!
	IEnumerator RefreshView () {
		// Remove all the UI on screen
		RemoveChildren ();
		yield return new WaitForSeconds(0.4f);

		// Read all the content until we can't continue any more
		while (story.canContinue) {
			// Continue gets the next line of the story
			string text = story.Continue ();
			// This removes any white space from the text.
			text = text.Trim();
			// Display the text on screen!
			CreateContentView(text);
		}

		// Display all the choices, if there are any!
		if(story.currentChoices.Count > 0) {
			for (int i = 0; i < story.currentChoices.Count; i++) {
				Choice choice = story.currentChoices [i];
				Button button = CreateChoiceView (choice.text.Trim ());
				// Tell the button what to do when we press it
				button.onClick.AddListener (delegate {
					OnClickChoiceButton (choice);
				});
			}
		}
		// If we've read all the content and there's no choices, the story is finished!
		else {
			Button choice = CreateChoiceView("End of story.\nRestart?");
            choice.onClick.AddListener(delegate
            {
                StartStory();
            });
            Button choice2 = CreateChoiceView("Exit Game");
            choice2.onClick.AddListener(delegate
            {
                Application.Quit();
            }
			);
		}
	}

	// When we click the choice button, tell the story to choose that choice!
	void OnClickChoiceButton (Choice choice) {
		story.ChooseChoiceIndex (choice.index);
        StartCoroutine(RefreshView());
	}

	// Creates a button showing the choice text
	void CreateContentView (string text) {
		Text storyText = Instantiate (textPrefab) as Text;
		storyText.text = text;
		storyText.transform.SetParent (canvas.transform, false);

        //Fade in
        storyText.canvasRenderer.SetAlpha(0);
        storyText.CrossFadeAlpha(1, 0.5f, true);
	}

	// Creates a button showing the choice text
	Button CreateChoiceView (string text) {
		// Creates the button from a prefab
		Button choice = Instantiate (buttonPrefab) as Button;
		choice.transform.SetParent (canvas.transform, false);
		
		// Gets the text from the button prefab
		Text choiceText = choice.GetComponentInChildren<Text> ();
		choiceText.text = text;

		// Make the button expand to fit the text
		HorizontalLayoutGroup layoutGroup = choice.GetComponent <HorizontalLayoutGroup> ();
		layoutGroup.childForceExpandHeight = false;

        //Fade in
        Graphic choiceGraphic = choice.GetComponent<Graphic>();
        choiceGraphic.canvasRenderer.SetAlpha(0);
        choiceGraphic.CrossFadeAlpha(1, 0.5f, true);
        choiceText.canvasRenderer.SetAlpha(0);
        choiceText.CrossFadeAlpha(1, 0.5f, true);

		return choice;
	}

	// Destroys all the children of this gameobject (all the UI)
	void RemoveChildren () {

        //Fade out
        Text[] texts = canvas.transform.GetComponentsInChildren<Text>();
        foreach (Text t in texts)
        {
            t.CrossFadeAlpha(0, 0.5f, true);
        }
        Graphic[] gfx = canvas.transform.GetComponentsInChildren<Text>();
        foreach (Graphic g in gfx)
        {
            g.CrossFadeAlpha(0, 0.5f, true);
        }

        int childCount = canvas.transform.childCount;
		for (int i = childCount - 1; i >= 0; --i) {
			GameObject.Destroy (canvas.transform.GetChild (i).gameObject);
		}
	}

	[SerializeField]
	private TextAsset inkJSONAsset;
	private Story story;

	[SerializeField]
	private Canvas canvas;

	// UI Prefabs
	[SerializeField]
	private Text textPrefab;
	[SerializeField]
	private Button buttonPrefab;
}