public class Quiz1 {
    static int count;

    public void increment(){
        count++;
    }

    public void show() {
        System.out.println("Count is  " +count);
    }

    public static void main(String[] args) {
        Quiz1 obj1 = new Quiz1();
        Quiz1 obj2 = new Quiz1();
        Quiz1 obj3 = new Quiz1();

        obj1.increment();
        obj2.increment();
        obj3.increment();

        obj1.show();
    }
}