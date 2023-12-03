/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author HERNANDEZ
 */
public class ViewModelClientes {
    
    //ATRIBUTOS
    private int ID_Cliente;
    private String nombresCliente;
    private String apellidosCliente;
    private String dui; 
    private int ID_Direccion;
    private String direccionCompleta;
    private String telefono;
    
        /**
     * @return the ID_Cliente
     */
    public int getID_Cliente() {
        return ID_Cliente;
    }

    /**
     * @param ID_Cliente the ID_Cliente to set
     */
    public void setID_Cliente(int ID_Cliente) {
        this.ID_Cliente = ID_Cliente;
    }

    /**
     * @return the nombresCliente
     */
    public String getNombresCliente() {
        return nombresCliente;
    }

    /**
     * @param nombresCliente the nombresCliente to set
     */
    public void setNombresCliente(String nombresCliente) {
        this.nombresCliente = nombresCliente;
    }

    /**
     * @return the apellidosCliente
     */
    public String getApellidosCliente() {
        return apellidosCliente;
    }

    /**
     * @param apellidosCliente the apellidosCliente to set
     */
    public void setApellidosCliente(String apellidosCliente) {
        this.apellidosCliente = apellidosCliente;
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
}
