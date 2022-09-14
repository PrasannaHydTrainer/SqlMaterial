import java.util.List;
import java.util.ArrayList;

public class GenListEx {
    public static void main(String[] args) {
        List<String> names = new ArrayList<String>();
        names.add("Santosh");
        names.add("Prasad");
        names.add("Sairam");
        names.add("Yash");
        names.add("Surya");
     //   names.add(12);

        for(String s : names) {
            System.out.println(s);
        }
    }
}