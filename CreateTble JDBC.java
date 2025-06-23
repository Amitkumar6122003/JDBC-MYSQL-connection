package com.jdbcprograms;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class CreateTable{ 

    public static void main(String[] args)throws Exception
    {
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	 
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","root");
        
        String q="Create table student(sid int,sname varchar(52), age int, city varchar(50),blood_group varchar(80), contact_number varchar(10)) ";
         
        Statement stmt=con.createStatement();
        
        stmt.executeUpdate(q);
        
        
        System.out.println("Table created succesfully");
        
        con.close();
        
    }
}