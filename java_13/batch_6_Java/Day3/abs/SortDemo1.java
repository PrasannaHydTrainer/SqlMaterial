import java.util.SortedSet;
import java.util.TreeSet;

public class SortDemo1 {
    public static void main(String[] args) {
        SortedSet names = new TreeSet();
        names.add("Neha");
        names.add("Abhipsa");
        names.add("Anuja");
        names.add("Solomon");
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