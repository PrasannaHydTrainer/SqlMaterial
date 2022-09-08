public class StrEx {

    public void show() {
        String str = "Hello";
        str.concat(" World");
        System.out.println(str);
    }

    public static void main(String[] args) {
        StrEx obj = new StrEx();
        obj.show();
    }
}