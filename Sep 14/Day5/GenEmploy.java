import java.util.List;
import java.util.ArrayList;

public class GenEmploy {
    public static void main(String[] args) {
        List<Employ> employs = new ArrayList<Employ>();
        employs.add(new Employ(1, "Sairam", 84234));
        employs.add(new Employ(2, "Sharan", 90423));
        employs.add(new Employ(3, "Rajeswari", 90223));
        employs.add(new Employ(4, "Neha", 81133));
        employs.add(new Employ(6, "Meghanroyal", 90223));
        employs.add(new Employ(7, "Bhavani", 81133));
        employs.add(new Employ(5, "Abhipsa", 80993));
  //      employs.add("Hello");
        System.out.println("Employ List  ");
        System.out.println("--------------------");
        for(Employ employ : employs) {
            System.out.println(employ);
        }
    }
}