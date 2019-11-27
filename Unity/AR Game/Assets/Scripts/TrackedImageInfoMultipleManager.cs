using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.XR.ARFoundation;

[RequireComponent(typeof(ARTrackedImageManager))]
public class TrackedImageInfoMultipleManager : MonoBehaviour
{
    //[SerializeField]
    //private GameObject welcomePanel;

    //[SerializeField]
    //private Button dismissButton;

    //[SerializeField]
    //private Text imageTrackedText;

    [SerializeField]
    private GameObject[] arObjectsToPlace;

    //[SerializeField]
    //private Vector3 scaleFactor = new Vector3(0.1f, 0.1f, 0.1f);

    private ARTrackedImageManager m_TrackedImageManager;

    private Dictionary<string, GameObject> arObjects = new Dictionary<string, GameObject>();
    //private GameObject newARObject;

    //private ARRaycastManager arManager;
    //private Pose placementPose;
    //private bool placementPoseIsValid = false;

    void Awake()
    {
        //dismissButton.onClick.AddListener(Dismiss);
        m_TrackedImageManager = GetComponent<ARTrackedImageManager>();

        // setup all game objects in dictionary
        foreach (GameObject arObject in arObjectsToPlace)
        {
            GameObject newARObject = Instantiate(arObject, new Vector3 (0, 0, 0), Quaternion.identity) as GameObject;
            //GameObject newARObject = arObject;
            newARObject.name = arObject.name;
            arObjects.Add(arObject.name, newARObject);
            //newARObject.SetActive(false);
        }
        //arManager = FindObjectOfType<ARRaycastManager>();
    }

    void OnEnable()
    {
        m_TrackedImageManager.trackedImagesChanged += OnTrackedImagesChanged;
    }

    void OnDisable()
    {
        m_TrackedImageManager.trackedImagesChanged -= OnTrackedImagesChanged;
    }

    //private void Dismiss() => welcomePanel.SetActive(false);

    void OnTrackedImagesChanged(ARTrackedImagesChangedEventArgs eventArgs)
    {
        foreach (ARTrackedImage trackedImage in eventArgs.added)
        {
            //UpdateARImage(trackedImage);
            if ((arObjects[trackedImage.referenceImage.name]) != null)
            {
                arObjects[trackedImage.referenceImage.name].SetActive(true);
                arObjects[trackedImage.referenceImage.name].transform.position = trackedImage.transform.position;
                arObjects[trackedImage.referenceImage.name].transform.rotation = trackedImage.transform.rotation;
            }
        }

        foreach (ARTrackedImage trackedImage in eventArgs.updated)
        {
            //UpdateARImage(trackedImage);
            //if(trackedImage.trackingState == UnityEngine.XR.ARSubsystems.TrackingState.Tracking)
            //{
            //    /* Loop through image/prefab-combo array */
            //    for (int i = 0; i < arObjectsToPlace.Length; i++)
            //    {
            //        /* If trackedImage matches an image in the array */
            //        if (arObjectsToPlace[i].name == trackedImage.referenceImage.name)
            //        {
            //            /* Set the corresponding prefab to active at the center of the tracked image */
            //            arObjectsToPlace[i].SetActive(true);
            //            arObjectsToPlace[i].transform.position = trackedImage.transform.position;
            //        }
            //    }
            //    /* If not properly tracked */
            //}
            //else
            //{
            //    /* Deactivate all prefabs */
            //    for (int i = 0; i < arObjectsToPlace.Length; i++)
            //    {
            //        arObjectsToPlace[i].SetActive(false);
            //    }
            //}
            if ((arObjects[trackedImage.referenceImage.name]) != null)
            {
                arObjects[trackedImage.referenceImage.name].SetActive(true);
                arObjects[trackedImage.referenceImage.name].transform.position = trackedImage.transform.position;
                arObjects[trackedImage.referenceImage.name].transform.rotation = trackedImage.transform.rotation;
            }
        }

        foreach (ARTrackedImage trackedImage in eventArgs.removed)
        {
            arObjects[trackedImage.name].SetActive(false);
        }
    }

    private void UpdateARImage(ARTrackedImage trackedImage)
    {
        // Display the name of the tracked image in the canvas
        //imageTrackedText.text = trackedImage.referenceImage.name;

        // Assign and Place Game Object
        AssignGameObject(trackedImage.referenceImage.name, trackedImage.transform.position);

        //Debug.Log($"trackedImage.referenceImage.name: {trackedImage.referenceImage.name}");
    }

    void AssignGameObject(string name, Vector3 newPosition)
    {
        if (arObjectsToPlace != null)
        {
            //newARObject.SetActive(true);
            GameObject goARObject = arObjects[name];
            goARObject.SetActive(true);
            goARObject.transform.position = newPosition;
            goARObject.transform.localScale = new Vector3(1, 1, 1);
            foreach(GameObject go in arObjects.Values)
            {
                //Debug.Log($"Go in arObjects.Values: {go.name}");
                if(go.name != name)
                {
                    go.SetActive(false);
                }
            } 
        }
    }

    //private void UpdatePlacementPose()
    //{
    //    var screenCenter = Camera.current.ViewportToScreenPoint(new Vector3(0.5f, 0.5f));
    //    var hits = new List<ARRaycastHit>();
    //    arManager.Raycast(screenCenter, hits, UnityEngine.XR.ARSubsystems.TrackableType.Planes);

    //    placementPoseIsValid = hits.Count > 0;
    //    if (placementPoseIsValid)
    //    {
    //        placementPose = hits[0].pose;

    //        var cameraForward = Camera.current.transform.forward;
    //        var cameraBearing = new Vector3(cameraForward.x, 0, cameraForward.z).normalized;
    //        placementPose.rotation = Quaternion.LookRotation(cameraBearing);
    //    }
    //}
}
