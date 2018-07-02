package it.schetty.tesina.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import com.mysql.jdbc.Driver;

public class MySqlDbManager {
    private Connection connection;
    private static final String connectionString = "jdbc:mysql://localhost:3306/Esame";
    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.err.println(e.getMessage());
        }
    }

    public Connection openConnection(){
        try {
            connection = DriverManager.getConnection(connectionString,"root", null);
        } catch (SQLException e) {
            System.err.println("errore nell'apertura del db");
            System.err.println(e.getMessage());
            e.printStackTrace();
        }
        return connection;
    }

    public Connection closeConnection(Connection c) {
        try {
            c.close();
        } catch (SQLException e) {
            System.err.println("errore nella chiusura del db");
            System.err.println(e.getMessage());
            e.printStackTrace();
        }
        return connection;
    }
}
