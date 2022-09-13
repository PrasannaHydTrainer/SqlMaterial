public class CaseExample1 {

    public void show(int n) {
        switch(n) {
            case 1 :
                System.out.println("Hi I am Suresh Kumar...");
                break;
            case 2 : 
                System.out.println("Hi I am Anuja...");
                break;
            case 3 : 
                System.out.println("Hi I am Syed...");
                break;
            case 4 : 
                System.out.println("Hi I am Srikar...");
                break;
            case 5 : 
                System.out.println("Hi I am Alekhya...");
                break;
            default : 
                System.out.println("Invalid Choice...");
                break;
        }
    }
    public static void main(String[] args) {
        int n=3;
        CaseExample1 obj = new CaseExample1();
        obj.show(n);
    }
}