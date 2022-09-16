package com.hexaware.trainer;

import java.util.List;
import java.util.ArrayList;

public class EmployDAO {

    static List<Employ> employList;

    static {
        employList = new ArrayList<Employ>();
    }

    public String updateEmployDao(Employ employNew) {
        Employ employFound = searchEmployDao(employNew.getEmpno());
        if (employFound!=null) {
            for(Employ employ : employList) {
                if (employ.getEmpno() == employNew.getEmpno()) {
                    employ.setName(employNew.getName());
                    employ.setDept(employNew.getDept());
                    employ.setDesig(employNew.getDesig());
                    employ.setBasic(employNew.getBasic());
                }
            }
        return "Employ Record Updated...";
        }
        return "Employ Record Not Found...";
    }
    public String deleteEmployDao(int empno) {
        Employ employ = searchEmployDao(empno);
        if (employ!=null) {
            employList.remove(employ);
            return "Employ Record Deleted...";
        }
        return "Employ Record not Found...";
    }

    public Employ searchEmployDao(int empno) {
        Employ employFound = null;
        for(Employ employ : employList) {
            if (employ.getEmpno() == empno) {
                employFound = employ;
            }
        }
        return employFound;
    }
    public List<Employ> showEmployDao() {
        return employList;
    } 

    public String addEmployDao(Employ employ) {
        employList.add(employ);
        return "Employ Record Inserted...";
    }
}