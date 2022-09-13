abstract class Vehicle {
    abstract void name();
    abstract void type();
}

class Scross extends Vehicle {
 
    @Override
    public void name() {
        System.out.println("Name is Scross...");
    }

    @Override
    public void type() {
        System.out.println("Its 4 Wheeler...");
    }
}

class Glamour extends Vehicle {
    @Override
    public void name() {
        System.out.println("Name is Glamour...");
    }

    @Override
    public void type() {
        System.out.println("Its 2-Wheeler Category...");
    }
}

public class AbsTest {
    public static void main(String[] args) {
        Vehicle[] arr = new Vehicle[] {
            new Glamour(), new Scross()
        };
        for(Vehicle v : arr) {
            v.name();
            v.type();
        }
    }
}