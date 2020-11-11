package com.simpleboard.test;
import static org.junit.Assert.fail;
import lombok.extern.log4j.Log4j;
import org.junit.Test;

import java.sql.Connection;
import java.sql.DriverManager;

@Log4j
public class JDBCTest {
    static {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    @Test
    public void testConnection(){
        try(Connection con= DriverManager.getConnection(
                "jdbc:oracle:thin:@localhost:1521:XE",
                "miniproject",
                "1234")){
            log.info(con);
        } catch (Exception e){
            fail(e.getMessage());
        }
    }
}
