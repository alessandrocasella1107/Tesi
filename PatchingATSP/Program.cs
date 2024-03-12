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

            int n = 9;
            double[][] c = new double[][]
            {
                new double[] { double.MaxValue, 7, 3, 4, 10, 6, 7, 7, 4 },
                new double[] { 9, double.MaxValue, 10, 6, 9, 5 , 4, 4, 6 },
                new double[] { 5, 4, double.MaxValue, 1, 10, 6, 7, 5, 4 },
                new double[] { 4, 8, 7, double.MaxValue, 9, 8, 9, 10, 8 },
                new double[] { 6, 5, 9, 5, double.MaxValue, 10, 6, 6, 3 },
                new double[] { 8, 3, 5, 4, 8, double.MaxValue, 7, 5, 8 },
                new double[] { 5, 5, 7, 7, 6, 8,double.MaxValue, 3, 6 },
                new double[] { 6, 3, 9, 5, 12, 8, 7, double.MaxValue, 7 },
                new double[] { 5, 6, 8, 8, 6, 9, 3, 3, double.MaxValue},
            };

            SolveATSPPatchCplex.solve(n, c);
        }


    }
}