import java.util.Date;
import java.text.SimpleDateFormat;
import java.text.ParseException;

public class DateExample1 {

    public void show(String str) throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date dt = sdf.parse(str);
        System.out.println(dt);
    }
    public static void main(String[] args) {
        String str = "2022-09-14";
        DateExample1 obj = new DateExample1();
        try {
            obj.show(str);
        } catch(ParseException e) {
            System.out.println(e);
        } catch (Exception e) {
            System.out.println(e);
        }
        
    }
}