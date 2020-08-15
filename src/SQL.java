import java.sql.*;
public class SQL {

    String tableName;
    int userInput;


    public void sqlQuery() throws SQLException {
        String url = "jdbc:mysql://localhost:3306/cr7_sander";
        String user = "root";
        String password = "";
        Statement statement = null;
        Connection connection = DriverManager.getConnection(url, user, password);
        ResultSet resultSet = null;
        try {
            statement = connection.createStatement();
            ResultSet result = null;
            try {
                String sql = "SELECT * FROM " + tableName;
                resultSet = statement.executeQuery(sql);
                while (resultSet.next()) {
                    int students_id = resultSet.getInt("Students_id");
                    String firstName = resultSet.getString("First_name");
                    String lastName = resultSet.getString("Last_Name");
                    String eMail = resultSet.getString("E_Mail");
                    System.out.println(students_id + " " + firstName+ " " + lastName+ " "+ eMail);
                                    }

            } finally {
                if (resultSet != null) resultSet.close();
            }
        } finally {
            if (statement != null) statement.close();
        }
    }

    public void sqlQuery2() throws SQLException {
        String url = "jdbc:mysql://localhost:3306/cr7_sander";
        String user = "root";
        String password = "";
        Statement statement = null;
        Connection connection = DriverManager.getConnection(url, user, password);
        ResultSet resultSet = null;
        try {
            statement = connection.createStatement();
            ResultSet result = null;
            try {
                String sql = "SELECT * FROM " + tableName;
                resultSet = statement.executeQuery(sql);
                while (resultSet.next()) {
                    String className = resultSet.getString("Class_Name");
                    int  classID = resultSet.getInt("Classes_id");

                    System.out.println(classID + " " + className);

                }
            } finally {
                if (resultSet != null) resultSet.close();
            }
        } finally {
            if (statement != null) statement.close();
        }
    }

    public void sqlQuery3() throws SQLException {
        String url = "jdbc:mysql://localhost:3306/cr7_sander";
        String user = "root";
        String password = "";
        Statement statement = null;
        Connection connection = DriverManager.getConnection(url, user, password);
        ResultSet resultSet = null;
        try {
            statement = connection.createStatement();
            ResultSet result = null;
            try {
                String sql = "SELECT * FROM " + tableName;
                resultSet = statement.executeQuery(sql);
                while (resultSet.next()) {
                    int teacher_id = resultSet.getInt("teacher_id");
                    String firstName = resultSet.getString("First_name");
                    String lastName = resultSet.getString("Last_Name");
                    String eMail = resultSet.getString("E_Mail");
                    System.out.println(teacher_id + " " + firstName+ " " + lastName+ " "+ eMail);
                }

            } finally {
                if (resultSet != null) resultSet.close();
            }
        } finally {
            if (statement != null) statement.close();
        }
    }
//here i make a preparedStatement to avoid injection.
    public void sqlTeacherClasses() throws SQLException {
        String url = "jdbc:mysql://localhost:3306/cr7_sander";
        String user = "root";
        String password = "";
        Connection connection = DriverManager.getConnection(url, user, password);
        ResultSet resultSet = null;

        String sq1 = "\n" +
                "SELECT classes.class_name, teachers.teacher_id, teachers.First_Name, teachers.Last_Name \n" +
                "FROM `classes`\n" +
                "INNER JOIN teachers on teacher_id  = (fk_teacher_id)\n" +
                "WHERE fk_teacher_id=?";

        PreparedStatement preparedStatement = null;


        try {
            preparedStatement = connection.prepareStatement(sq1);
            preparedStatement.setInt(1, userInput);


                resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {

                    String firstName = resultSet.getString("teachers.First_name");
                    String lastName = resultSet.getString("teachers.Last_Name");
                    String className = resultSet.getString("classes.class_name");
                    System.out.println(className + "'s teacher is: " + firstName+ " " + lastName);
                }

            } finally {
                if (resultSet != null) resultSet.close();
            }
        }
}
