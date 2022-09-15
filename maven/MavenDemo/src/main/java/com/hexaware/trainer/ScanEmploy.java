package com.hexaware.trainer;

import java.util.Scanner;

public class ScanEmploy {
    public static void main(String[] args) {
        Employ employ = new Employ();
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter Employ Number  ");
        employ.setEmpno(sc.nextInt());
        System.out.println("Enter Employ Name   ");
        employ.setName(sc.next());
        System.out.println("Enter Basic   ");
        employ.setBasic(sc.nextDouble());

        System.out.println(employ);
    }
}