public class ConTest {

    int a,b;
    
    ConTest() {
        this.a=12;
        this.b=53;
    }

    ConTest(int a, int b) {
        this.a = a;
        this.b = b;
    }

    @Override
    public String toString() {
        return "A value is  " +a+ " B value is  " +b;
    }

    public static void main(String[] args) {
        ConTest obj1 = new ConTest();
        System.out.println(obj1);

        ConTest obj2 = new ConTest(52, 90);
        System.out.println(obj2);
    }
}