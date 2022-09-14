public class Employ {
    int empno;
    String name;
    double basic;

    Employ() {}

    Employ(int empno, String name, double basic) {
        this.empno = empno;
        this.name = name;
        this.basic = basic;
    }

    @Override
    public String toString() {
        return "Employ No  " +empno+ " Name " +name+ " Basic  " +basic;
    }
}