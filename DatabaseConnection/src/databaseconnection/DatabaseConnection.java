/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package databaseconnection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Pratik
 */
public class DatabaseConnection {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws SQLException {
        try {
            // TODO code application logic here
            
            //step 1 - Load Drivers and Create Connection Object
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","admin");
            System.out.println(con);
            //step 2- Create statement
            Statement stmt = con.createStatement();
            String sql="select * from student";
             // Step 3: Execute the query
            ResultSet result = stmt.executeQuery(sql);
             // Step 4: Process the results

            // Condition check using hasNext() method which
            // holds true till there is single element
            // remaining in List
            while (result.next()) {

                // Print name an age
                System.out.println(
                    "Id: " + result.getString("student_id"));
                System.out.println(
                    "Name:" + result.getString("student_name"));
            }
           
            //UPDATE
            Boolean Res;
//             Res = stmt.execute("UPDATE student SET student_name= 'Pratik' WHERE student_name = 'John Doe'");
//            System.out.println(Res);
//            if(!Res){
//                System.out.println("Upadted SuccessFully");
//            }

//            //Delete
            Res=stmt.execute("DELETE FROM student where age=19");
            System.out.println(Res);
            if(!Res){
                System.out.println("Delete SuccessFully");
            }

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
