public class Voting {

    public void check(int age) {
        if (age >= 18) {
            System.out.println("He is Elligible for Voting...");
        } else {
            System.out.println("He is Not Elligible for Voting...");
        }
    }
    public static void main(String[] args) {
        int age=17;
        Voting obj = new Voting();
        obj.check(age);
    }
}