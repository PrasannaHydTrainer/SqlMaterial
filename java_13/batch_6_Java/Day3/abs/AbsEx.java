abstract class Training {
    abstract void name();
    abstract void email();
}

class Santosh extends Training {
    
    @Override
    public void name() {
        System.out.println("Name is Santosh...");
    }

    @Override
    public void email() {
        System.out.println("Email is santosh@gmail.com");
    }
}
class Neha extends Training {

    @Override 
    public void name() {
        System.out.println("Hi I am Neha...");
    }

    @Override
    public void email() {
        System.out.println("Email is Neha@gmail.com");
    }
}
public class AbsEx {
    public static void main(String[] args) {
        Training[] arr = new Training[] {
            new Neha(),
            new Santosh()
        };

        System.out.println("Output  ");
        for(Training t : arr) {
            t.name();
            t.email();
        }
    }
}