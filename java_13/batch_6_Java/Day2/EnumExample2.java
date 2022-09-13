enum Month {
    JANUARY, FEBRUARY, MARCH, APRIL, MAY, JUNE, JULY, AUGUST, 
    SEPTEMBER, OCTOBER, NOVEMBER, DECEMBER
}
public class EnumExample2 {
    
    public static void main(String[] args) {
        String mon = "SEPTEMBER";
        Month m = Month.valueOf(mon);
        System.out.println(m);
    }
}