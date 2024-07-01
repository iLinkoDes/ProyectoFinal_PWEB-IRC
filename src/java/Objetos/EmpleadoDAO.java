/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Objetos;

/**
 *
 * @author iLeLi
 */
import config.Conexion;
import java.sql.*;

public class EmpleadoDAO {
    Conexion c = new Conexion();
    Connection conn;
    PreparedStatement ps;
    ResultSet rs;
    
    public Empleado verificar(String usuario, String identificacion_empleado) {
        Empleado empleado = new Empleado();
        String sql = "SELECT * FROM empleados WHERE usuario=? AND identificacion_empleado=?";
        
        try {
            conn = c.getConexion();
            if (conn != null) {
                ps = conn.prepareStatement(sql);
                ps.setString(1, usuario);
                ps.setString(2, identificacion_empleado);
                rs = ps.executeQuery();
                
                while (rs.next()) {
                    empleado.setUsuario(rs.getString("usuario"));
                    empleado.setIdentificacion_empleado(rs.getString("identificacion_empleado"));
                    empleado.setId_empleado(rs.getInt("id_empleado"));
                    empleado.setNombre(rs.getString("nombre"));
                    empleado.setApellidos(rs.getString("apellidos"));
                    empleado.setTelefono(rs.getString("telefono"));
                }
            } else {
                System.out.println("Failed to establish a connection.");
            }
        } catch (SQLException e) {
            System.out.println("SQL query failed.");
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conn != null) c.closeConexion();
            } catch (SQLException e) {
                System.out.println("Failed to close resources.");
                e.printStackTrace();
            }
        }
        return empleado;
    }
    
    public Empleado reconectar(String usuario){
        Empleado empleado = new Empleado();
        
        String sql = "SELECT * FROM empleados WHERE usuario=?";
        
        try {
            conn = c.getConexion();
            if (conn != null) {
                ps = conn.prepareStatement(sql);
                ps.setString(1, usuario);
                rs = ps.executeQuery();
                
                while (rs.next()) {
                    empleado.setUsuario(rs.getString("usuario"));
                    empleado.setIdentificacion_empleado(rs.getString("identificacion_empleado"));
                    empleado.setId_empleado(rs.getInt("id_empleado"));
                    empleado.setNombre(rs.getString("nombre"));
                    empleado.setApellidos(rs.getString("apellidos"));
                    empleado.setTelefono(rs.getString("telefono"));
                }
            } else {
                System.out.println("Failed to establish a connection.");
            }
        } catch (SQLException e) {
            System.out.println("SQL query failed.");
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conn != null) c.closeConexion();
            } catch (SQLException e) {
                System.out.println("Failed to close resources.");
                e.printStackTrace();
            }
        }
        
        return empleado;
    }
    
}