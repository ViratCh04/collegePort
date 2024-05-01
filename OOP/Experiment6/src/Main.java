import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.print("Enter first number: ");
        float a = input.nextFloat();
        System.out.print("Enter second number: ");
        float b = input.nextFloat();

        try {
            divide(a, b);
        } catch (ArithmeticException e){
            e.printStackTrace();
        } finally {
            System.out.println("Exiting. Too-too-roo!");
        }
    }

    public static void divide(float a, float b) {

        if (b == 0) {
            throw new ArithmeticException("Can't divide by zero cuz that's infinity");
        }


        float result = (float) a / b;

        System.out.printf("The output of %.2f / %.2f is %.2f%n", a, b, result);
    }


}