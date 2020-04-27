package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBUtils {
    public void insert(User user) {
        Statement statement = null;
        Connection conn = null;
        try {
            conn =  DBConnection.createConnection();
            System.out.println("Connected!");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try {
            statement = conn.createStatement();
            int rows = statement.executeUpdate("INSERT INTO users(login, password) VALUES ("
                    + "\'" + user.getUserName() + "\'" + ", \'" + user.getPassword() + "\'" + ")");
            System.out.printf("Added %d rows", rows);
        } catch (SQLException e) {
            System.out.println("EXEPTION" + e.getSQLState());
            e.printStackTrace();
        }
    }

    /*public List<User> selectAll(Connection connection) {
        String selectTableSQL = "SELECT * from users;";
        List<User> users = new ArrayList<>();
        try {
            Statement statement = null;
            statement = connection.createStatement();

            // выбираем данные с БД
            ResultSet rs = statement.executeQuery(selectTableSQL);

            // И если что то было получено то цикл while сработает
            while (rs.next()) {
                int id = Integer.parseInt(rs.getString("id"));
                String login = rs.getString("login");
                String password = rs.getString("password");
                users.add(new User(id, login, password));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return users;
    }*/

    public User searchByColumnData(String columnName, String columnData) {
        Connection conn = null;
        try {
            conn =  DBConnection.createConnection();
            System.out.println("Connected!");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        String selectTableSQL = "SELECT * from users WHERE " + columnName + " = \'" + columnData + "\';";
        System.out.println(selectTableSQL);
        User user = null;
        try {
            Statement statement = null;
            statement = conn.createStatement();

            // выбираем данные с БД
            ResultSet rs = statement.executeQuery(selectTableSQL);

            // И если что то было получено то цикл while сработает
            while(rs.next()) {
                int id = Integer.parseInt(rs.getString("id"));
                String login = rs.getString("login");
                String password = rs.getString("password");
                user = new User(login, password);
                System.out.println(user);
            }
        } catch (SQLException e) {
            System.out.println("EXEPTION!");
            e.printStackTrace();
        }
        return user;
    }

    public boolean isTruePassword(String login, String enteredPassword) throws NoSuchFieldException {
        if(isLoginExists(login)) {
            System.out.println("Its true pwd!");
            return enteredPassword.equals(searchByColumnData("login", login).getPassword());
        } else {
            throw new NoSuchFieldException("This login isn't registered : " + login);
        }
    }

    public boolean isLoginExists(String login) {
        System.out.println("Trying to find login");
        System.out.println(searchByColumnData("login", login) != null);
        return searchByColumnData("login", login) != null;
    }

    public void addUser(User user){
        System.out.println("Trying to insert user : " + user.getUserName());
        System.out.println(!isLoginExists(user.getUserName()));
        if(!isLoginExists(user.getUserName())) {
            insert(user);
            System.out.println("DONE!");
        } else {
            System.out.println("PROBLEM!");
        }
        System.out.println(isLoginExists(user.getUserName()));
    }
}
