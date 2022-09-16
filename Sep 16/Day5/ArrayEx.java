public class ArrayEx {
    public static void main(String[] args) {
        int[] a = new int[]{45,23};
        try {
            a[10]=883;
        } catch (ArrayIndexOutOfBoundsException e) {
            System.out.println("Array Size is Small...");
        } 
        catch (Exception e) {
            System.out.println(e);
        }
    }
}