/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.util.Date;

/**
 *
 * @author MINEDUCYT
 */
public class ViewModelEmpleados {

     //ATRIBUTOS
    //camelCase
    private int ID_Empleado;
    private String nombresEmpleado;
    private String apellidosEmpleado;
    private String dui;
    private String isss;
    private Date fechaNacEmpleado;
    private String telefono;
    private int ID_Cargo;
    private String cargo;
    private int ID_Direccion;
    private String direccionCompleta;
    
    /**
     * @return the ID_Empleado
     */
    public int getID_Empleado() {
        return ID_Empleado;
    }

    /**
     * @param ID_Empleado the ID_Empleado to set
     */
    public void setID_Empleado(int ID_Empleado) {
        this.ID_Empleado = ID_Empleado;
    }

    /**
     * @return the nombresEmpleado
     */
    public String getNombresEmpleado() {
        return nombresEmpleado;
    }

    /**
     * @param nombresEmpleado the nombresEmpleado to set
     */
    public void setNombresEmpleado(String nombresEmpleado) {
        this.nombresEmpleado = nombresEmpleado;
    }

    /**
     * @return the apellidosEmpleado
     */
    public String getApellidosEmpleado() {
        return apellidosEmpleado;
    }

    /**
     * @param apellidosEmpleado the apellidosEmpleado to set
     */
    public void setApellidosEmpleado(String apellidosEmpleado) {
        this.apellidosEmpleado = apellidosEmpleado;
    }

    /**
     * @return the dui
     */
    public String getDui() {
        return dui;
    }

    /**
     * @param dui the dui to set
     */
    public void setDui(String dui) {
        this.dui = dui;
    }

    /**
     * @return the isss
     */
    public String getIsss() {
        return isss;
    }

    /**
     * @param isss the isss to set
     */
    public void setIsss(String isss) {
        this.isss = isss;
    }

    /**
     * @return the fechaNacEmpleado
     */
    public Date getFechaNacEmpleado() {
        return fechaNacEmpleado;
    }

    /**
     * @param fechaNacEmpleado the fechaNacEmpleado to set
     */
    public void setFechaNacEmpleado(Date fechaNacEmpleado) {
        this.fechaNacEmpleado = fechaNacEmpleado;
    }

    /**
     * @return the telefono
     */
    public String getTelefono() {
        return telefono;
    }

    /**
     * @param telefono the telefono to set
     */
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    /**
     * @return the ID_Cargo
     */
    public int getID_Cargo() {
        return ID_Cargo;
    }

    /**
     * @param ID_Cargo the ID_Cargo to set
     */
    public void setID_Cargo(int ID_Cargo) {
        this.ID_Cargo = ID_Cargo;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }
    /**
     * @return the ID_Direccion
     */
    public int getID_Direccion() {
        return ID_Direccion;
    }

    /**
     * @param ID_Direccion the ID_Direccion to set
     */
    public void setID_Direccion(int ID_Direccion) {
        this.ID_Direccion = ID_Direccion;
    }
    
    public String getDireccionCompleta() {
        return direccionCompleta;
    }

    public void setDireccionCompleta(String direccionCompleta) {
        this.direccionCompleta = direccionCompleta;
    }
}
