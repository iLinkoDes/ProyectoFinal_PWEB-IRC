/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Objetos;

/**
 *
 * @author iLeLi
 */
public class Empleado {
    int id_empleado;
    String identificacion_empleado;
    String nombre;
    String apellidos;
    String telefono;
    String activo;
    String usuario;
    
    public Empleado(){
        
    }

    public Empleado(int id_empleado, String identificacion_empleado, String nombre, String apellidos, String telefono, String activo, String usuario) {
        this.id_empleado = id_empleado;
        this.identificacion_empleado = identificacion_empleado;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.telefono = telefono;
        this.activo = activo;
        this.usuario = usuario;
    }

    public int getId_empleado() {
        return id_empleado;
    }

    public void setId_empleado(int id_empleado) {
        this.id_empleado = id_empleado;
    }

    public String getIdentificacion_empleado() {
        return identificacion_empleado;
    }

    public void setIdentificacion_empleado(String identificacion_empleado) {
        this.identificacion_empleado = identificacion_empleado;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getActivo() {
        return activo;
    }

    public void setActivo(String activo) {
        this.activo = activo;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }
    
    
}
