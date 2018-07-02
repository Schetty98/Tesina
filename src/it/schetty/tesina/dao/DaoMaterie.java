package it.schetty.tesina.dao;

import it.schetty.tesina.db.MySqlDbManager;
import it.schetty.tesina.model.Materie;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DaoMaterie {

    public static Materie getTesto (Materie materie){

        Connection connection;
        MySqlDbManager db = new MySqlDbManager();
        connection = db.openConnection();

        try {
            String accedi= "SELECT * FROM materie WHERE ID_MATERIA = ?";
            PreparedStatement statement = connection.prepareStatement(accedi);
            statement.setString(1,materie.getMateria());
            ResultSet rs = statement.executeQuery();
            while (rs.next()){
               materie.setMateria(rs.getString(1));
                materie.setArgomento(rs.getString(2));
                materie.setTesto(rs.getString(3));
                return materie;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.closeConnection(connection);
        }
        return materie;
    }

    public static boolean setTesto(Materie materie) {
        Connection connection;
        MySqlDbManager db = new MySqlDbManager();
        connection = db.openConnection();

        try {
            String sql = "UPDATE materie SET  TESTO = ? WHERE ID_MATERIA=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, materie.getTesto());
            statement.setString(2, materie.getMateria());
            int rowsUpdated = statement.executeUpdate();
            if (rowsUpdated > 0) {
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
           db.closeConnection(connection);
        }

        return false;
    }

    public static List<Materie> getMaterie() {
        Materie materie;
        List<Materie> materieList = new ArrayList<>();
        Connection connection;
        MySqlDbManager db = new MySqlDbManager();
        connection = db.openConnection();

        try {
            String accedi= "SELECT * FROM materie";
            PreparedStatement statement = connection.prepareStatement(accedi);
            ResultSet rs = statement.executeQuery();
            while (rs.next()){
                materie = new Materie();
                materie.setMateria(rs.getString(1));
                materie.setArgomento(rs.getString(2));
                materie.setTesto(rs.getString(3));
                materieList.add(materie);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.closeConnection(connection);
        }
        return materieList;
    }
}
