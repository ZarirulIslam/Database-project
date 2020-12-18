package Database;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class MySALDatabase {
    
    Connection connect = null;
    Statement statement = null;
    PreparedStatement preparedStatement = null;
    ResultSet result = null;
    Scanner sc = null;

    void databaseOperation() {
        try {
            connect = DriverConnect.getInstance();
            sc = new Scanner(System.in);
          
            statement = connect.createStatement();
            result = statement.executeQuery("SELECT * FROM Books,Customer,Staff,Branch,Issue,Return_Book");

            while (result.next()) {
                System.out.println("Book Name: " + result.getString("Book_Name"));
                System.out.println("Book_Isbn: " + result.getString("Book_ISBN"));
                System.out.println("Book Author: " + result.getString("Book_Author"));
                System.out.println("Book Edition: " + result.getString("Book_Edition"));
                System.out.println("Customer Name: " + result.getString("Customer_Name"));
                System.out.println("Customer Email: " + result.getString("Customer_Email"));
                System.out.println("Customer Address: " + result.getString("Customer_Address"));
                System.out.println("Staff Id: " + result.getString("Staff_ID"));
                System.out.println("Staff Name: " + result.getString("Staff_Name"));
                System.out.println("Staff Address: " + result.getString("Staff_Address"));
                System.out.println("Staff Gender: " + result.getString("Staff_Gender"));
                System.out.println("Staff Phone: " + result.getString("Staff_Phone"));
                System.out.println("Branch ID: " + result.getString("Branch_id"));
                System.out.println("Branch Name: " + result.getString("Branch_Name"));
                System.out.println("Branch Location: " + result.getString("Branch_Location"));
                System.out.println("Issue Id: " + result.getString("Issue_ID"));
                System.out.println("Issue Date: " + result.getString("Issue_Date"));
                System.out.println("Expiry Date: " + result.getString("Expiry_Date"));
                System.out.println("Book Name: " + result.getString("Book_Name"));
                System.out.println("Book ID: " + result.getString("Book_ID"));
                System.out.println("Return Id: " + result.getString("Return_ID"));
                System.out.println("Issue Date: " + result.getString("Issue_Date"));
                System.out.println("Expiry Date: " + result.getString("Expiry_Date"));
                System.out.println("Book ID: " + result.getString("Book_ID"));
            }
           

        } catch (Exception ex) {
        	System.out.println("MyError:" +ex);

        }
        }

   
    }