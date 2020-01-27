using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LevelSelectionButton : MonoBehaviour
{
    public GameObject levelSelect;

    void Start()
    {
        levelSelect.SetActive(false);
    }

    public void levelSelection()
    {
        levelSelect.SetActive(true);
    }
}
