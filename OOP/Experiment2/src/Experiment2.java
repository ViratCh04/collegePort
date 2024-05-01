import java.util.Scanner;

public class Experiment2 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Enter integer for factorial: ");
        int factorialN = input.nextInt();
        System.out.printf("The factorial is %d is %d%n\n", factorialN,factorial(factorialN));
        System.out.print("Enter integer for fibonacci: ");
        int fibonacciN = input.nextInt();
        System.out.printf("Fibonacci sequence upto %d: ", fibonacciN);
        fibonacci(fibonacciN);
    }

    static int factorial(int n) {
        if (n == 1) {
            return 1;
        }

        return n * factorial(n-1);
    }

    static void fibonacci(int n) {

        int a=0, b=1, c, i;
        System.out.print(a + " ");
        for (i=0; i<n; i++) {
            c = a + b;
            a = b;
            b = c;
            System.out.print(c +  " ");
        }



    }


}