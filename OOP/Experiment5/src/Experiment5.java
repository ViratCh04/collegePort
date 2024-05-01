import java.lang.Character;
import java.util.Scanner;

public class Experiment5 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.print("Enter your string: ");
        String userString = input.next();
        System.out.print("Enter string for comparison: ");
        String comparisonString = input.next();

        StringOperations op = new StringOperations(userString);

        System.out.println("Reversed: " + op.reverse());
        System.out.println("Equals " + comparisonString + "? " + op.equals(comparisonString));
        System.out.println("Case Changed: " + op.changeCase());

    }
}

class StringOperations {

    String string;

    StringOperations(String string) {
        this.string = string;
    }

    String reverse() {
        String reversed = "";
        for (int i = this.string.length() - 1; i >= 0; i--) {
            reversed += this.string.charAt(i);
        }
        return reversed;
    }

    boolean equals(String other) {
        return this.string.equals(other);
    }

    String changeCase() {
        String output = "";
        for (int i = 0; i < this.string.length(); i++) {
            char c = this.string.charAt(i);
            if (Character.isUpperCase(c)) {
                output += Character.toLowerCase(c);
            } else {
                output += Character.toUpperCase(c);
            }
        }

        return output;
    }

}