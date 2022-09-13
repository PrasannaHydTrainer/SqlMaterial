import java.util.SortedSet;
import java.util.TreeSet;
import java.util.Comparator;

public class SortDemo2 {
    public static void main(String[] args) {
       // Comparator c = new NameComparator();
        Comparator c = new BasicComparator();
        SortedSet employs = new TreeSet(c);
        employs.add(new Employ(1, "Sairam", 84234));
        employs.add(new Employ(2, "Sharan", 90423));
        employs.add(new Employ(3, "Rajeswari", 90223));
        employs.add(new Employ(4, "Neha", 81133));
        employs.add(new Employ(6, "Meghanroyal", 90223));
        employs.add(new Employ(7, "Bhavani", 81133));
        employs.add(new Employ(5, "Abhipsa", 80993));

        System.out.println("Employ List is  ");
        System.out.println("----------------");
        for(Object ob : employs) {
            System.out.println(ob);
        }
    }
}