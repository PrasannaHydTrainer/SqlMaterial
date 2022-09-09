class Employ {
    
    int empno;
    String name;
    double basic;

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

class Spurthi extends Employ {
    Spurthi(int empno, String name, double basic) {
        super(empno, name, basic);
    }
}

class Surya extends Employ {
    Surya(int empno, String name, double basic) {
        super(empno, name, basic);
    }
}


public class SupCon {
    public static void main(String[] args) {
        Employ[] arr = new Employ[] {
            new Surya(1, "Surya", 84823),
            new Spurthi(3, "Spurthi", 88321)
        };

        for(Employ e : arr) {
            System.out.println(e);
        }
    }
}
