package com.hexaware.trainer;

import java.util.List;
import java.util.ArrayList;

public class EmployDAO {

    static List<Employ> employList;

    static {
        employList = new ArrayList<Employ>();
    }

    public List<Employ> showEmployDao() {
        return employList;
    } 

    public String addEmployDao(Employ employ) {
        employList.add(employ);
        return "Employ Record Inserted...";
    }
}