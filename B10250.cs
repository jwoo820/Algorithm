using System;
namespace B10250
{
    class Program
    {
        static void Main(string[] args)
        {
            int t = int.Parse(Console.ReadLine());

            for (int i = 0; i < t; i++)
            {
                string[] input = Console.ReadLine().Split();
                int h = int.Parse(input[0]);
                int w = int.Parse(input[1]);
                int n = int.Parse(input[2]);

                int result = (--n / h + 1) + (n % h + 1) * 100;

                Console.WriteLine("{0}", result);
            }

        }
    }
}
