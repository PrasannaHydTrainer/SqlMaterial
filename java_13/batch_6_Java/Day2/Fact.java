public class Fact {
    public void show(int n) {
        int f=1;
        int i=1;
        while(i <= n) {
            f = f * i;
            i++;
        }
        System.out.println("Factorial Value is   " +f);
    }
    public static void main(String[] args) {
        int n=6;
        Fact obj = new Fact();
        obj.show(n);
    }
}