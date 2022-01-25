using System;

namespace B1085
{
    class Program
    {
        static void Main(string[] args)
        {
            string[] input = Console.ReadLine().Split();
            int x = int.Parse(input[0]);
            int y = int.Parse(input[1]);
            int w = int.Parse(input[2]);
            int h = int.Parse(input[3]);

            int com1 = (x * 2 > w) ? w - x : x;
            int com2 = (y * 2 > h) ? h - y : y;

            Console.WriteLine("{0}", com1 < com2 ? com1 : com2);
        }
    }
}
