import java.util.Scanner;
public class ThrEx {
    public void check(int n) {
        if (n < 0) {
            throw new ArithmeticException("Negative Numbers not allowed...");
        } else if (n == 0) {
            throw new NumberFormatException("Zero is Invalid Value...");
        } else {
            System.out.println("N value is   " +n);
        }
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n;
        System.out.println("Enter N value   ");
        n = sc.nextInt();
        ThrEx obj = new ThrEx();
        try {
            obj.check(n);
        } catch (ArithmeticException e) {
            System.out.println(e);
        } catch (NumberFormatException e) {
            System.out.println(e);
        }
        
    }
}