using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.ARFoundation;
using UnityEngine.XR.ARSubsystems;
//using UnityEngine.Experimental.XR;
using System;

public class ARTapToPlace : MonoBehaviour
{
    public GameObject objectToPlace;
    public GameObject placementIndicator;
    public GameObject Quad;
    //public Vector2 touchPos;

    //private ARSessionOrigin arOrigin;
    private ARRaycastManager arManager;
    private Pose placementPose;
    private bool placementPoseIsValid = false;
    private bool spawned = false;
    private Pose indicator;

    void Start()
    {
        spawned = false;
        //arOrigin = FindObjectOfType<ARSessionOrigin>();
        arManager = FindObjectOfType<ARRaycastManager>();
    }

    void Update()
    {
        if (!spawned)
        {
            var fingerCount = 0;
            foreach (Touch touch in Input.touches)
            {
                if (touch.phase != TouchPhase.Ended && touch.phase != TouchPhase.Canceled)
                {
                    fingerCount++;
                }
            }

            if (fingerCount > 0)
            {
                Touch touch = Input.GetTouch(0);
                switch (touch.phase)
                {
                    case TouchPhase.Began:
                        //touchPos = touch.position;
                        if (placementPoseIsValid)
                        {            
                            PlaceObject();
                        }
                        break;
                }
            }

            //if (placementPoseIsValid && Input.touchCount > 0 && Input.GetTouch(0).phase == TouchPhase.Began)
            //{
            //    PlaceObject();
            //}

            UpdatePlacementPose();
            UpdatePlacementIndicator();
        }

        if (spawned)
        {
            Quad.SetActive(false);
        }
    }

    private void PlaceObject()
    {
        indicator.position = placementPose.position;
        indicator.rotation = placementPose.rotation;
        Instantiate(objectToPlace, indicator.position, indicator.rotation);
        spawned = true;
    }

    private void UpdatePlacementIndicator()
    {
        if (placementPoseIsValid)
        {
            placementIndicator.SetActive(true);
            placementIndicator.transform.SetPositionAndRotation(placementPose.position, placementPose.rotation);
        }
        else
        {
            placementIndicator.SetActive(false);
        }
    }

    private void UpdatePlacementPose()
    {
        var screenCenter = Camera.current.ViewportToScreenPoint(new Vector3(0.5f, 0.5f));
        var hits = new List<ARRaycastHit>();
        arManager.Raycast(screenCenter, hits, TrackableType.Planes);

        placementPoseIsValid = hits.Count > 0;
        if (placementPoseIsValid)
        {
            placementPose = hits[0].pose;

            var cameraForward = Camera.current.transform.forward;
            var cameraBearing = new Vector3(cameraForward.x, 0, cameraForward.z).normalized;
            placementPose.rotation = Quaternion.LookRotation(cameraBearing);
        }
    }
}
