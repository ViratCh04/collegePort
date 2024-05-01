import java.util.Scanner;

public class Experiment4 {
    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);
        System.out.print("Enter length: ");
        double length = input.nextDouble();
        System.out.print("Enter breadth: ");
        double breadth = input.nextDouble();

        Rectangle rectangle = new Rectangle(length, breadth);
        System.out.printf("The perimeter of the rectangle is %.2f%n", rectangle.perimeter());
        System.out.printf("The area of the rectangle is %.2f%n", rectangle.area());

    }
}

class Rectangle {

    double length;
    double breadth;

    Rectangle(double length, double breadth) {
        this.length = length;
        this.breadth = breadth;
    }

    double area() {
        return this.length * this.breadth;
    }

    double perimeter() {
        return 2 * (this.length + this.breadth);
    }

}