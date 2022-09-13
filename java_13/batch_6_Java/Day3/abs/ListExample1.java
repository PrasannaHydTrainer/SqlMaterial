import java.util.List;
import java.util.ArrayList;

public class ListExample1 {
    public static void main(String[] args) {
        List names = new ArrayList();
        names.add("Prasad");
        names.add("Sheetal");
        names.add("Spurthi");
        names.add("Surya");
        names.add("Santosh");
        System.out.println("Names are  ");
        for(Object ob : names) {
            System.out.println(ob);
        }
    }
}