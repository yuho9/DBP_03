package model.dao;

import java.sql.Connection;
import java.sql.Statement;

public class AddProfileColumns {

    public static void main(String[] args) {

        try {
            ConnectionManager manager = new ConnectionManager();
            Connection conn = manager.getConnection();
            Statement stmt = conn.createStatement();

            stmt.executeUpdate("ALTER TABLE UserInfo ADD nickname VARCHAR2(30)");
            stmt.executeUpdate("ALTER TABLE UserInfo ADD major VARCHAR2(50)");
            stmt.executeUpdate("ALTER TABLE UserInfo ADD grade VARCHAR2(20)");
            stmt.executeUpdate("ALTER TABLE UserInfo ADD desiredPart VARCHAR2(50)");
            stmt.executeUpdate("ALTER TABLE UserInfo ADD desiredProject VARCHAR2(100)");
            stmt.executeUpdate("ALTER TABLE UserInfo ADD skills VARCHAR2(200)");

            System.out.println("컬럼 추가 성공!");

            stmt.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}