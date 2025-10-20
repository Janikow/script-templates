using System;

class Calculator {
    static void Main() {
        Console.WriteLine("Simple C# Calculator");
        while (true) {
            Console.Write("Enter expression (or 'exit' to quit): ");
            string input = Console.ReadLine();
            if(input.ToLower() == "exit") break;
            try {
                var result = new System.Data.DataTable().Compute(input, null);
                Console.WriteLine("Result: " + result);
            } catch {
                Console.WriteLine("Invalid input.");
            }
        }
    }
}
