using ILOG.CPLEX;
using PatchingATSP;
using System;
using System.Collections.Generic;

namespace ATSP_Patching
{
    class Program
    {
        static void Main(string[] args)
        {
            var list_errori10nodi = new List<double>();
            var list_errori15nodi = new List<double>();
            var list_errori20nodi = new List<double>();

            //int n = 9;
            //double[][] c = new double[][]
            //{
            //    new double[] { double.MaxValue, 7, 3, 4, 10, 6, 7, 7, 4 },
            //    new double[] { 9, double.MaxValue, 10, 6, 9, 5 , 4, 4, 6 },
            //    new double[] { 5, 4, double.MaxValue, 1, 10, 6, 7, 5, 4 },
            //    new double[] { 4, 8, 7, double.MaxValue, 9, 8, 9, 10, 8 },
            //    new double[] { 6, 5, 9, 5, double.MaxValue, 10, 6, 6, 3 },
            //    new double[] { 8, 3, 5, 4, 8, double.MaxValue, 7, 5, 8 },
            //    new double[] { 5, 5, 7, 7, 6, 8,double.MaxValue, 3, 6 },
            //    new double[] { 6, 3, 9, 5, 12, 8, 7, double.MaxValue, 7 },
            //    new double[] { 5, 6, 8, 8, 6, 9, 3, 3, double.MaxValue},
            //};

            //var soluzionePatching = SolveATSPPatchCplex.solve(n, c);
            //var soluzioneAP = SolveAPCplex.solve(n, c);
            //double result = (soluzionePatching - soluzioneAP) / soluzioneAP;

            //Console.WriteLine($"La deviazione dal lower bound è: {result}");

            var num_matrici10Nodi = 0;
            while (num_matrici10Nodi < 10)
            {
                var c = GeneratoreMatrici.GenerateMatrix(10);
                var soluzionePatching = SolveATSPPatchCplex.solve(10, c);
                var soluzioneAP = SolveAPCplex.solve(10, c);
                double result = (soluzionePatching - soluzioneAP) / soluzioneAP;
                //Console.WriteLine($"La deviazione dal lower bound è: {result}");
                list_errori10nodi.Add(result);
                num_matrici10Nodi++;
            }

            var num_matrici15Nodi = 0;
            while (num_matrici15Nodi < 10)
            {
                var c = GeneratoreMatrici.GenerateMatrix(15);
                var soluzionePatching = SolveATSPPatchCplex.solve(15, c);
                var soluzioneAP = SolveAPCplex.solve(10, c);
                double result = (soluzionePatching - soluzioneAP) / soluzioneAP;
                //Console.WriteLine($"La deviazione dal lower bound è: {result}");
                list_errori15nodi.Add(result);
                num_matrici15Nodi++;
            }

            var num_matrici20Nodi = 0;
            while (num_matrici20Nodi < 10)
            {
                var c = GeneratoreMatrici.GenerateMatrix(20);
                var soluzionePatching = SolveATSPPatchCplex.solve(20, c);
                var soluzioneAP = SolveAPCplex.solve(10, c);
                double result = (soluzionePatching - soluzioneAP) / soluzioneAP;
                //Console.WriteLine($"La deviazione dal lower bound è: {result}");
                list_errori20nodi.Add(result);
                num_matrici20Nodi++;
            }
            Console.WriteLine("L'errore medio in 10 matrici composte da 10 nodi è: " + CalculateAverage(list_errori10nodi));
            Console.WriteLine("L'errore medio in 10 matrici composte da 15 nodi è: " + CalculateAverage(list_errori15nodi));
            Console.WriteLine("L'errore medio in 10 matrici composte da 20 nodi è: " + CalculateAverage(list_errori20nodi));
        }



        public static double CalculateAverage(List<double> numbers)
        {
            if (numbers == null || numbers.Count == 0)
            {
                throw new ArgumentException("La lista dei numeri è vuota o nulla.");
            }

            double sum = 0;
            foreach (double number in numbers)
            {
                sum += number;
            }

            return sum / numbers.Count;
        }

    }
}