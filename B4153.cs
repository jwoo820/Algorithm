using System;
using System.Collections.Generic;
namespace B4153
{
    class Program
    {
        static void Main(string[] args)
        {
            List<string> list = new List<string>();
            while (true)
            {
                string[] input = Console.ReadLine().Split();
                int a = int.Parse(input[0]);
                int b = int.Parse(input[1]);
                int c = int.Parse(input[2]);
                int[] arr = { a, b, c };
                Array.Sort(arr);
                if (a == 0 && b == 0 && c == 0)
                    break;

                string result = (arr[2] * arr[2] == arr[0] * arr[0] + arr[1] * arr[1]) ? "right" : "wrong";
                list.Add(result);
            }
            foreach (string i in list)
            {
                Console.WriteLine("{0}", i);
            }
        }
    }
}
