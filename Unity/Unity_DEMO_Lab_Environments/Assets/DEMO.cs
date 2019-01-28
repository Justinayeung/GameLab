using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class DEMO : MonoBehaviour
{
    public Text outPut;
    public GameObject prefab;
    public int[] numbers;
    private int[] _numbers;

    void Start()
    {
        //int a = 1;
        //int b = 5;

        //string a = "Hi";
        //string b = " There";
        //Order matters to string
        //You can't subtract strings

        //a += b;     //OR a = a + b;
        //c = c + d;

        //float a = 1.5f;
        //float b = 2;

        //a = a / b;
        //int c = (int)Mathf.Round(a);
        //int c = (int)Mathf.Floor(a);    //Round down to the nearest whole
        //int c = (int)Mathf.Ceil(a);    //Round up to the nearest whole

        //outPut.text = a.ToString();
        //outPut.text = c.ToString();


        //bool a = true;
        //a = !a;      //OR a = !(a == true);

        //if(a)   //(a) == (a == true) AND (!a) == (a == false)


        //int a = 2;

        //if (a < 1)
        //{
        //    outPut.text = "Less than 1";
        //}
        //else if(a < 2)
        //{
        //    outPut.text = "Just 1";
        //}
        //else
        //{
        //    outPut.text = "Higher than 1";
        //}

        //for (int i = 0; i < 10; i++)
        //{
        //    for (int j = 0; j < 10; j++)
        //    {
        //        //This would print out 100 times
        //        print(i);
        //        outPut.text += i.ToString() + "\n";  //\n = new line
        //    }
        //}

        //for (int i = 10; i > 0; i--)
        //{
        //    outPut.text += i.ToString() + "\n";
        //}

        //StartCoroutine(MakeBlocks());

        //outPut.text = numbers[0].ToString();
        //for (int i = 0; i < numbers.Length; i++)
        //{
        //    outPut.text += numbers[i].ToString() + "\n";
        //}


        //_numbers = new int[] { 5, 392, 39, 2, 0 };
        //for (int i = 0; i < _numbers.Length; i++)
        //{
        //    outPut.text += _numbers[i].ToString() + "\n";
        //}

        //for (int i = _numbers.Length - 1; i > -1; i--)
        //{
        //    outPut.text += _numbers[i].ToString() + "\n";
        //}


        //Destroys cubes if there are cubes in the scene
        //GameObject[] cubes = GameObject.FindGameObjectsWithTag("Cube");
        //for (int i = 0; i < cubes.Length; i++)
        //{
        //    Destroy(cubes[i]);
        //}

        //This is the same as the for loop above but it just uses foreach()
        //foreach (GameObject cube in cubes)
        //{
        //    Destroy(cube);
        //}
    }

    //IEnumerator MakeBlocks()
    //{
    //    for (int i = 0; i < 20; i++)
    //    {
    //        for (int j = 0; j < 100; j++)
    //        {
    //            Vector3 pos = new Vector3(Random.Range(-5, 5), Random.Range(-5, 5), Random.Range(-5, 5));
    //            Instantiate(prefab, pos, Quaternion.identity);
    //        }
    //        yield return null;
    //    }
    //}
}
