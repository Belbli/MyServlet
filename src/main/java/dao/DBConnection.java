package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    public static Connection createConnection() throws ClassNotFoundException {
        Connection connection = null;
        Class.forName("org.postgresql.Driver");
        try {
            connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres",
                    "postgres", "rootroot");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }
}
