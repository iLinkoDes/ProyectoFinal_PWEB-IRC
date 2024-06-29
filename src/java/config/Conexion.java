/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package config;

import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author iLeLi
 */
public class Conexion {
    Connection conn;
    String db="jdbc:mysql://localhost:3306/db_tu_tienda";
    String usuario="root";
    String contra="";
    public Connection Conexion(){
        try{
            Class.forName("com.myqsl.jdbc.Driver");
            conn=DriverManager.getConnection(db,usuario,contra);
        }catch(Exception e){
            
        }
        return conn;
    }
}
