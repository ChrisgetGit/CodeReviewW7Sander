import java.sql.SQLException;

public class Main {

    public static void main(String[] args) throws SQLException {
        SQL sql = new SQL();
        UserInterface userInterface = new UserInterface(sql);
    }
}


