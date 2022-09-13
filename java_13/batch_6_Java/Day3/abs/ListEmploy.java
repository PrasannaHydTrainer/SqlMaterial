import java.util.List;
import java.util.ArrayList;

public class ListEmploy {
    public static void main(String[] args) {
        List employList = new ArrayList();
        employList.add(new Employ(1, "Sairam", 84234));
        employList.add(new Employ(2, "Sharan", 90423));
        employList.add(new Employ(3, "Rajeswari", 90223));
        employList.add(new Employ(4, "Neha", 81133));
        employList.add(new Employ(5, "Abhipsa", 80993));

        System.out.println("Employ List  ");
        for(Object ob : employList) {
            System.out.println(ob);
        }
    }
}