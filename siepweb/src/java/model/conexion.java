/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Edward
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Locale;

/**
 *
 * @author incubus
 */
public class conexion {
        String db = "xe";
//        String user = "poa";
        String user = "utic";
//        String passwd = "espe";
        String passwd = "123456";
        String port = "1521";
        String classname = "oracle.jdbc.OracleDriver";
        String hostname = "localhost";
        String url = "jdbc:oracle:thin:@"+hostname+":"+port+":"+db;//"jdbc:oracle:thin:@localhost:1521:xe","poa","espe"
        Connection con;
        
        public conexion()
        {
            try {
                Class.forName(classname);
                Locale.setDefault(new Locale("es","ES"));
                con = DriverManager.getConnection(url,user,passwd);
            } catch (ClassNotFoundException e) {
                System.err.println(e.getMessage());
            }catch(SQLException sqle)
            {
                System.err.println(sqle.getMessage());
            }
        }
        public Connection getConexion()
        {
            return con;
        }
}
