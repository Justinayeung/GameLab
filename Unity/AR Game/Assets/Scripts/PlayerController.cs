using UnityEngine.AI;
using UnityEngine;
using System.Collections.Generic;
using System.Collections;

public class PlayerController : MonoBehaviour
{
    private Camera cam;
    public NavMeshAgent agent;
    public Vector2 touchPos;
    public GameObject touchIndicator;
    private NavMeshSurface surface;
    private TapManager tapManager;

    public static bool Level1;
    public static bool Level2;
    public static bool Level3;
    public static bool Level4;
    public static bool Level5;
    public static bool Level6;

    void Awake()
    {
        Level1 = false;
        Level2 = false;
        Level3 = false;
        Level4 = false;
        Level5 = false;
        Level6 = false;
        surface = GameObject.FindGameObjectWithTag("NavMesh").GetComponent<NavMeshSurface>();
        cam = GameObject.FindGameObjectWithTag("MainCamera").GetComponent<Camera>();
        tapManager = FindObjectOfType<TapManager>();
    }

    void Start()
    {
        InvokeRepeating("BuildingMesh", 0f, 2f);
    }

    void Update()
    {
        //surface.BuildNavMesh();
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
                    touchPos = touch.position;
                    break;
            }

            Ray ray = cam.ScreenPointToRay(touchPos);
            RaycastHit hit;

            if (Physics.Raycast(ray, out hit))
            {
                //MOVE OUR AGENT
                if (tapManager.stairsOnce || tapManager.bridgeOnce || tapManager.cancelOnce)
                {
                    if (hit.collider.tag == "Platform" || hit.collider.tag == "Bridge" || hit.collider.tag == "Stairs")
                    {
                        agent.SetDestination(hit.point);
                        Instantiate(touchIndicator, hit.point, Quaternion.identity);
                        //agent.Warp(hit.point);
                    }
                }
            }
        }

        if (Input.GetMouseButtonDown(0))
        {
            Ray ray = cam.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;

            if (Physics.Raycast(ray, out hit))
            {
                //MOVE OUR AGENT
                if (tapManager.stairsOnce || tapManager.bridgeOnce || tapManager.cancelOnce)
                {
                    if (hit.collider.tag == "Platform" || hit.collider.tag == "Bridge" || hit.collider.tag == "Stairs")
                    {
                        agent.SetDestination(hit.point);
                        //agent.Warp(hit.point);
                    }
                }
            }
        }
    }

    void BuildingMesh()
    {
        surface.BuildNavMesh();
    }
}
