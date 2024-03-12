using ATSP_Patching;
using ILOG.Concert;
using ILOG.CPLEX;
using System;
using System.Collections.Generic;
using System.Security.AccessControl;

namespace PatchingATSP
{
    public class SolveATSPPatchCplex2
    {
        public static void solve(int n, double[][] m)
        {
            try
            {
                using (Cplex cplex = new Cplex())
                {
                    // Variabili
                    INumVar[][] x = new INumVar[n][];
                    for (int i = 0; i < n; i++)
                    {
                        x[i] = cplex.BoolVarArray(n);
                    }
                    INumVar[] u = new INumVar[n];
                    for (int i = 0; i < n; i++)
                    {
                        u[i] = cplex.NumVar(0, double.MaxValue);
                    }

                    // Obiettivo
                    ILinearNumExpr objective = cplex.LinearNumExpr();
                    for (int i = 0; i < n; i++)
                    {
                        int pos_i = i + 1;
                        for (int j = 0; j < n; j++)
                        {
                            int pos_j = j + 1;
                            x[i][j] = cplex.BoolVar($"x[{pos_i}][{pos_j}]");
                            objective.AddTerm(m[i][j], x[i][j]);
                        }
                    }
                    cplex.AddMinimize(objective);

                    // Vincoli
                    for (int j = 0; j < n; j++)
                    {//degree constraints.
                        ILinearNumExpr exp = cplex.LinearNumExpr();
                        for (int i = 0; i < n; i++)
                        {
                            if (i != j)
                            {
                                exp.AddTerm(1, x[i][j]);
                            }
                        }
                        cplex.AddEq(exp, 1);
                    }

                    for (int i = 0; i < n; i++)
                    {//degree constraints.
                        ILinearNumExpr exp = cplex.LinearNumExpr();
                        for (int j = 0; j < n; j++)
                        {
                            if (j != i)
                            {
                                exp.AddTerm(1, x[i][j]);
                            }
                        }
                        cplex.AddEq(exp, 1);
                    }
                    for (int i = 1; i < n; i++)
                    {
                        for (int j = 1; j < n; j++)
                        {
                            if (i != j)
                            {
                                ILinearNumExpr exp = cplex.LinearNumExpr();
                                exp.AddTerm(1, u[i]);
                                exp.AddTerm(-1, u[j]);
                                exp.AddTerm(n - 1, x[i][j]);
                                cplex.AddLe(exp, n - 2);
                            }
                        }
                    }


                    // Risoluzione
                    if (cplex.Solve())
                    {

                        PatchHeuristic(n, m, x, cplex);

                        Console.WriteLine();
                        Console.WriteLine("Solution status = " + cplex.GetStatus());
                        Console.WriteLine();
                        Console.WriteLine("Optimal value = " + cplex.ObjValue);

                    }
                }
            }
            catch (ILOG.Concert.Exception exc)
            {
                Console.WriteLine("Concert exception caught: " + exc);
            }
        }



        public static void PatchHeuristic(int n, double[][] m, INumVar[][] x, Cplex cplex)
        {
            try
            {

                var bestTour = new List<int>();
                var bestCost = double.PositiveInfinity;
                var random = new Random();

                for (int iteration = 0; iteration < 1000; iteration++)
                {

                    var currentTour = Enumerable.Range(0, n).ToList();
                    currentTour.Shuffle(random);
                    var currentCost = CalculateTourCost(currentTour, m);

                    bool improved = true;
                    while (improved)
                    {
                        improved = false;
                        for (int i = 0; i < n; i++)
                        {
                            for (int j = i + 1; j < n; j++)
                            {
                                var patchedTour = new List<int>(currentTour);
                                patchedTour.Swap(i, j);
                                var patchedCost = CalculateTourCost(patchedTour, m);

                                if (patchedCost < currentCost)
                                {
                                    currentTour = patchedTour;
                                    currentCost = patchedCost;
                                    improved = true;
                                }
                            }
                        }
                    }


                    if (currentCost < bestCost)
                    {
                        bestTour = currentTour;
                        bestCost = currentCost;
                    }
                }

                for (int i = 0; i < n; i++)
                {
                    for (int j = 0; j < n; j++)
                    {
                        x[i][j] = cplex.BoolVar($"x[{i}][{j}]");
                        if (i != j && bestTour.Contains(i) && bestTour.Contains(j))
                        {
                            int index_i = bestTour.IndexOf(i);
                            int index_j = bestTour.IndexOf(j);


                            int nextIndex = (index_i + 1) % bestTour.Count;


                            if (bestTour[nextIndex] == j)
                            {
                                x[i][j].LB = 1.0;
                                x[i][j].UB = 1.0;
                            }
                            else
                            {
                                x[i][j].LB = 0.0;
                                x[i][j].UB = 0.0;
                            }
                        }
                        else
                        {
                            x[i][j].LB = 0.0;
                            x[i][j].UB = 0.0;
                        }
                    }
                }


                bestTour.Insert(0, 0);
                bestTour.RemoveRange(n, 1);

                foreach(var i in bestTour)
                {
                    for (int j = 0; j < n; j++)
                    {
                        if (x[i][j] != null && (x[i][j].LB==1 && x[i][j].UB==1))
                        {
                            Console.WriteLine($"x[{i}][{j}]");
                        }
                    }
                }
            }
            catch (System.Exception exc)
            {
                Console.WriteLine("Exception caught: " + exc);
            }
        }



        static double CalculateTourCost(List<int> tour, double[][] c)
        {
            double cost = 0;
            for (int i = 0; i < tour.Count - 1; i++)
            {
                cost += c[tour[i]][tour[i + 1]];
            }
            return cost;
        }




    }

    // Extension methods for List
    static class ListExtensions
    {

        public static void Shuffle<T>(this IList<T> list, Random random)
        {
            for (int i = list.Count - 1; i > 0; i--)
            {
                int j = random.Next(0, i + 1);
                T temp = list[i];
                list[i] = list[j];
                list[j] = temp;
            }
        }


        public static void Swap<T>(this IList<T> list, int i, int j)
        {
            T temp = list[i];
            list[i] = list[j];
            list[j] = temp;
        }
    }
}
