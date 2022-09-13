public class StrMethods {

    public void show() {
        String str = "Welcome to Java Programming...Trainer Prasanna...";
        System.out.println("Length of String is  " +str.length());
        System.out.println("First Occurrence of char 'o' is  " +str.indexOf('o'));
        System.out.println("Char at 5th position   " +str.charAt(5));
        System.out.println("Lower case String is  " +str.toLowerCase());
        System.out.println("Upper Case String is   " +str.toUpperCase());
        String s1="Anuja", s2="Syed", s3="Anuja";
        System.out.println(s1.equals(s2));
        System.out.println(s1.equals(s3));
    }
    public static void main(String[] args) {
        StrMethods obj = new StrMethods();
        obj.show();
    }
}