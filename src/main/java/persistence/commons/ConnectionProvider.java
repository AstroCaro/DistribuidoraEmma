package persistence.commons;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider {

    private static String url = "jdbc:mysql://localhost/emma_distributor";
    private static Connection connection;

    public static Connection getConnection() throws SQLException, ClassNotFoundException {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        if (connection == null) {
            connection = DriverManager.getConnection(url, "root","");
        }
        return connection;
    }
}