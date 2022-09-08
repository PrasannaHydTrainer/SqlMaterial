public class EvenShow {
    public void show(int n) {
        for(int i=2;i<=n;i+=2) {
            System.out.println("Even Numbers   " +i);
        }
    }
    public static void main(String[] args) {
        int n=20;
        EvenShow obj = new EvenShow();
        obj.show(n);
    }
}