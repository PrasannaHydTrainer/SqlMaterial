import java.util.Date;
import java.util.Scanner;
import java.text.SimpleDateFormat;
import java.text.ParseException;

public class DateExample2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        System.out.println("Enter Date  (yyyy-MM-dd)  ");
        try {
            Date dt = sdf.parse(sc.next());
            System.out.println(dt);
        } catch(ParseException e) {
            System.out.println(e);
        } catch (Exception e) {
            System.out.println(e);
        }
        
    }
}