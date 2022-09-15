package com.hexaware.trainer;
import java.util.Scanner;
import java.util.List;

public class EmployMain {

    static Scanner sc = new Scanner(System.in);

    static EmployDAO dao = new EmployDAO();

    public static void showEmploy() {
        List<Employ> employList = dao.showEmployDao();
        for(Employ employ : employList) {
            System.out.println(employ);
        }
    }
    public static void addEmploy() {
        Employ employ = new Employ();
        System.out.println("Enter Employ No  ");
        employ.setEmpno(sc.nextInt());
        System.out.println("Enter Employ Name  ");
        employ.setName(sc.next());
        System.out.println("Enter Department   ");
        employ.setDept(sc.next());
        System.out.println("Enter Designation   ");
        employ.setDesig(sc.next());
        System.out.println("Enter Basic   ");
        employ.setBasic(sc.nextDouble());

        System.out.println(dao.addEmployDao(employ));
    }

    public static void main(String[] args) {
        int choice;
        do {
            System.out.println("O P T I O N S");
            System.out.println("1. Add Employ");
            System.out.println("2. Show Employ");
            System.out.println("6. Exit");
            System.out.println("Enter Your Choice   ");
            choice = sc.nextInt();
            switch(choice) {
                case 1 :
                    addEmploy();
                    break;
                case 2 : 
                    showEmploy();
                    break;
                case 6 : 
                    return;
            }
        } while(choice!=6);
    }
}