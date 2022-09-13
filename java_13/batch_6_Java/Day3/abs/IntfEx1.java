interface ITraining {
    void name();
    void email();
}

class Prasad implements ITraining {
    
    @Override
    public void name() {
        System.out.println("Name is Prasad...");
    }

    @Override
    public void email() {
        System.out.println("Email is prasad@gmail.com");
    }
}

class Alekhya implements ITraining {
    
    @Override
    public void name() {
        System.out.println("Name is Alekhya...");
    }

    @Override
    public void email() {
        System.out.println("Email is Alekhya@gmail.com");
    }
}

public class IntfEx1 {
    public static void main(String[] args) {
        ITraining[] arr = new ITraining[] {
            new Alekhya(),
            new Prasad()
        };

        for(ITraining i : arr) {
            i.name();
            i.email();
        }
    }
}