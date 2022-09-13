public class StringArray {

    public void show() {
        String[] names = new String[] {
            "Anuja", "MeghanRoyal","Bhavani","Prasad","Syed"
        };

        for(String s : names) {
            System.out.println(s);
        }
    }
    public static void main(String[] args) {
        StringArray obj = new StringArray();
        obj.show();
    }
}