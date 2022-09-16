class Data<T> {
    public void swap(T a, T b) {
        T t;
        t=a;
        a=b;
        b=t;
        System.out.println("A value is  " +a+ " B value is  " +b);
    }
}
public class GenEx {
    public static void main(String[] args) {
        int a,b;
        a=5;
        b=7;
        Data obj = new Data();
        obj.swap(a, b);
        double b1, b2;
        b1=53.23;
        b2=498.23;
        obj.swap(b1, b2);
        String s1="Anuja", s2="Bhavani";
        obj.swap(s1, s2);
    }
}