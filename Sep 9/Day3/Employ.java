public class Employ {

    int empno;
    String name;
    double basic;

    Employ() {
        this.empno = 1;
        this.name="Anuja";
        this.basic=88321;
    }

    Employ(int empno, String name, double basic) {
        this.empno = empno;
        this.name = name;
        this.basic = basic;
    }

    @Override 
    public String toString() {
        return "Employ No   " +empno+ " Employ Name  " +name+ " Basic  " +basic;
    }
}