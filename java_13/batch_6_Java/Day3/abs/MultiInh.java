interface IOne {
    void name();
}

interface ITwo {
    void email();
}

class Sairam implements IOne, ITwo {
    @Override
    public void name() {
        System.out.println("Name is Sairam...");
    }

    @Override
    public void email() {
        System.out.println("Email is sairam@gmail.com");
    }
}
public class MultiInh {
    public static void main(String[] args) {
        Sairam obj = new Sairam();
        obj.name();
        obj.email();
    }
}