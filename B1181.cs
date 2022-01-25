using System;
using System.Collections.Generic;
using System.Linq;
namespace Test1
{
    class Program
    {
        static void Main(string[] args)
        {
            int n;
            n = int.Parse(Console.ReadLine());
            String[] arr = new String[n];
            for(int i=0; i<n;i++)
            {
                arr[i] = Console.ReadLine();
            }

            Array.Sort(arr);
            String[] disArr = arr.Distinct().ToArray();
   
            IEnumerable<string> query = from word in disArr
                                        orderby word.Length, word.Substring(0, 1)
                                        select word;

            foreach (string str in query)
                Console.WriteLine(str);
        }
    }
}
