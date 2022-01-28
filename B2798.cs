using System;

namespace B2798
{
    class Program
    {
        static void Main(string[] args)
        {
            string[] input = Console.ReadLine().Split();
            int n = int.Parse(input[0]);
            int m = int.Parse(input[1]);
            int[] arr = new int[m];
            string[] input2 = Console.ReadLine().Split();
            for (int i = 0; i < n; i++)
            {
                arr[i] = int.Parse(input2[i]);
            }
            int result = 0;
            int sum = 0;

            for (int i = 0; i < n - 2; i++)
            {
                for (int j = i + 1; j < n - 1; j++)
                {
                    for (int k = j + 1; k < n; k++)
                    {
                        sum = arr[i] + arr[j] + arr[k];
                        if (sum > result && sum <= m) result = sum;
                    }
                }
            }

            Console.WriteLine(result);
        }
    }
}
