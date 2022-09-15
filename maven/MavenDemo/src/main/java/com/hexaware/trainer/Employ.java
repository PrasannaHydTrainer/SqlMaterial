package com.hexaware.trainer;

public class Employ {

    private int empno;
    private String name;
    private double basic;

    public int getEmpno() {
        return empno;
    }

    public void setEmpno(int empno) {
        this.empno = empno;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getBasic() {
        return basic;
    }

    public void setBasic(double basic) {
        this.basic = basic;
    }

    @Override
    public String toString() {
        return "Employ No  " +empno+ " Employ Name " +name+ " Basic  " +basic;
    }
}