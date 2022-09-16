import java.util.Scanner;
import java.util.InputMismatchException;

public class DivEx {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int a, b, c;
        System.out.println("Enter 2 Numbers   ");
        try {
           a = sc.nextInt();
           b = sc.nextInt();
           c = a / b;
           System.out.println("Division Value   " +c);
        } catch (ArithmeticException e) {
            System.out.println("Division by zero impossible...");
        } catch (InputMismatchException e) {
            System.out.println("String Cannot be Converted as Integer...");
        } catch(Exception e) {
            System.out.println(e);
        } finally {
            System.out.println("Program from Batch-6...");
        }
    }
}