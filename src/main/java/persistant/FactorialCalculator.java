package persistant;

public class FactorialCalculator {
    public static String calculateFactorial(int value) {
        if (value < 0) {
            return "Invalid input. Please enter a non-negative number.";
        }

        long result = 1;
        StringBuilder steps = new StringBuilder("Calculation steps:<br>");

        for (int i = 1; i <= value; i++) {
            result *= i;
            steps.append(i).append("! = ").append(result).append("<br>");
        }

        return steps.toString();
    }
}