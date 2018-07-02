package it.schetty.tesina.dao;

import it.schetty.tesina.db.MySqlDbManager;
import it.schetty.tesina.model.AccountAdmin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DaoAccesso implements DaoAccessoInterface {
    @Override
    public boolean accedi(AccountAdmin accountAdmin) {
        Connection connection;
        MySqlDbManager db = new MySqlDbManager();
        connection = db.openConnection();

        try {
            String accedi= "SELECT * FROM account WHERE EMAIL = ? AND PASSWORD = ?";
            PreparedStatement statement = connection.prepareStatement(accedi);
            statement.setString(1,accountAdmin.getEmail());
            statement.setString(2,accountAdmin.getPassword());
            ResultSet rs = statement.executeQuery();
            while (rs.next()){
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.closeConnection(connection);
        }
        return false;
    }
}
