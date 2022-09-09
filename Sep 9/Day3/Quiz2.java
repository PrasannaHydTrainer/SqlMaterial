public class Quiz2 {

    static int count;

    public void increment() {
        count++;
        System.out.println(count);
    }

    public static void main(String[] args) {
        Quiz2 obj1 = new Quiz2();
        Quiz2 obj2 = new Quiz2();
        Quiz2 obj3 = new Quiz2();

        obj1.increment();
        obj2.increment();
        obj3.increment();
    }
}