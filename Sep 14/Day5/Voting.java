import java.util.Scanner;

public class Voting {

    public void show(int age) throws VotingException {
        if (age < 18) {
            throw new VotingException("You are not Elligible for Voting...");
        } else {
            System.out.println("Age is   " +age);
        }
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int age;
        System.out.println("Enter Your Age   ");
        age = sc.nextInt();
        Voting obj = new Voting();
        try {
            obj.show(age);        
        } catch (VotingException e) {
            System.out.println(e);
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}