using System;

namespace B11050
{
    class Program
    {
        static void Main(string[] args)
        {
            string[] input = Console.ReadLine().Split(" ");
            int n = int.Parse(input[0]);
            int k = int.Parse(input[1]);

            int result = Factorial(n)/(Factorial(k) * Factorial(n - k));

            Console.WriteLine(result);
        }

        static int Factorial(int Num)
        {
            int value = 1;
            for(int i=1; i<=Num; i++)
            {
                value *= i;
            }
            return value;
        }
    }
}
