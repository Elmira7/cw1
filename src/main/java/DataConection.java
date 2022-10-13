import java.sql.*;

public class DataConection {
    private static Connection connection = null;
    private final String URL = "jdbc:postgresql://localhost:5432/postgres";
    private final String USER = "postgres";
    private final String PASSWORD = "qwerty";
    private final String DRIVER = "org.postgresql.Driver";
    private final String SCHEMA = "cw1";

    public static Statement statmt;
    public static ResultSet resSet;

    public Connection getConnection(){
        try {
            if (connection == null || connection.isClosed()){
                Class.forName(DRIVER);
                connection = DriverManager.getConnection(URL, USER, PASSWORD);
            }
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return connection;
    }
    public static void CreateDB() throws ClassNotFoundException, SQLException {
        statmt = connection.createStatement();
        statmt.execute("CREATE TABLE if not exists food (id BIGSERIAL PRIMARY KEY , name text, quantity INT);");
        System.out.println("Таблица создана или уже существует");
    }

    public static void WriteDB() throws SQLException
    {
        statmt.execute("INSERT INTO food (name, quantity) VALUES ('тыквенный суп', 56); ");
        statmt.execute("INSERT INTO food (name, quantity) VALUES ('картошка', 97); ");
        statmt.execute("INSERT INTO food (name, quantity) VALUES ('кофе', 46); ");
        statmt.execute("INSERT INTO food (name, quantity) VALUES ('мороженое', 12); ");

        System.out.println("Таблица заполнена");
    }

    public static void CreateDBUser() throws ClassNotFoundException, SQLException {
        statmt = connection.createStatement();
        statmt.execute("CREATE TABLE if not exists user (id BIGSERIAL PRIMARY KEY , name text,login text, password text);");
        System.out.println("Таблица создана или уже существует");
    }
}

