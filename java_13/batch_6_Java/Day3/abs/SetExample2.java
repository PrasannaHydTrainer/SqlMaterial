import java.util.Set;
import java.util.LinkedHashSet;

public class SetExample2 {
    public static void main(String[] args) {
        Set names = new LinkedHashSet();
        names.add("Prasad");
        names.add("Sheetal");
        names.add("Spurthi");
        names.add("Surya");
        names.add("Santosh");
        names.add("Prasad");
        names.add("Sheetal");
        names.add("Spurthi");
        names.add("Surya");
        names.add("Santosh");
        names.add("Prasad");
        names.add("Sheetal");
        names.add("Spurthi");
        names.add("Surya");
        names.add("Santosh");
        names.add("Prasad");
        names.add("Sheetal");
        names.add("Spurthi");
        names.add("Surya");
        names.add("Santosh");
        System.out.println("Names are   ");
        for(Object ob : names) {
            System.out.println(ob);
        }
    }
}