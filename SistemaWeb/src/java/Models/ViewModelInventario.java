/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.util.Date;

/**
 *
 * @author HERNANDEZ
 */
public class ViewModelInventario {

    private int ID_Inventario;
    private String cantidadInventario;
    private Date FechaActualizacion;
    private int ID_Producto;
    private String nombreProducto;
    
    public int getID_Inventario() {
        return ID_Inventario;
    }

    public void setID_Inventario(int ID_Inventario) {
        this.ID_Inventario = ID_Inventario;
    }

    public String getCantidadInventario() {
        return cantidadInventario;
    }

    public void setCantidadInventario(String cantidadInventario) {
        this.cantidadInventario = cantidadInventario;
    }

    public Date getFechaActualizacion() {
        return FechaActualizacion;
    }

    public void setFechaActualizacion(Date FechaActualizacion) {
        this.FechaActualizacion = FechaActualizacion;
    }

    public int getID_Producto() {
        return ID_Producto;
    }

    public void setID_Producto(int ID_Producto) {
        this.ID_Producto = ID_Producto;
    }

    public String getNombreProducto() {
        return nombreProducto;
    }

    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }
}
