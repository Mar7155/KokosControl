/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.login;

import static com.login.inventario.JTinventario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.JTextPane;
import javax.swing.table.DefaultTableModel;
import static sql.ConexionSQL.conectar;

/**
 *
 * @author Ron McMillan
 */
public class Cinventario {

    int codigo;
    String producto;
    String cantidad;
    String preciounitario;    
    static DefaultTableModel modeloInv = new DefaultTableModel();
    
    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getProducto() {
        return producto;
    }

    public void setProducto(String producto) {
        this.producto = producto;
    }

    public String getCantidad() {
        return cantidad;
    }

    public void setCantidad(String cantidad) {
        this.cantidad = cantidad;
    }

    public String getPreciounitario() {
        return preciounitario;
    }

    public void setPreciounitario(String preciounitario) {
        this.preciounitario = preciounitario;
    }
    public static void IniciarInventario(JTable tbInv){
        Connection conexion = conectar();
        
        DefaultTableModel modeloInv = new DefaultTableModel();
        String consul = "SELECT * FROM inventario";
        modeloInv.addColumn("ID");
        modeloInv.addColumn("Producto");
        modeloInv.addColumn("Precio Unitario");        
        modeloInv.addColumn("Stock");
        List<String> idList = new ArrayList<>();
        List<String> productoList = new ArrayList<>();
        List<String> preciosList = new ArrayList<>();
        List<String> stockList = new ArrayList<>();
        
        tbInv.setModel(modeloInv);
        
        String[] datosInv = new String[4];       
        
        try(PreparedStatement ps = conexion.prepareStatement(consul)){
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int ide = rs.getInt("inventario_id");
                String nombre = rs.getString("inventario_nombre");
                double precioS = rs.getDouble("inventario_precio_unitario");                
                double stocks = rs.getDouble("inventario_cantidad");
                 
                String id = String.valueOf(ide);
                String precio = String.valueOf(precioS);
                String stock = String.valueOf(stocks);
                            
                idList.add(id);
                productoList.add(nombre);
                preciosList.add(precio);
                stockList.add(stock);                
            }
        }
        catch(Exception e){
            
        }
        for (int i = 0; i < idList.size(); i++) {
            Object[] filaInv = {idList.get(i), productoList.get(i), preciosList.get(i), stockList.get(i)};
            modeloInv.addRow(filaInv);
        }
        
    }
    
    public static void InsertarEnInventario(String insert,String param1, double param2, double param3){
        Connection conexion = conectar();
        
        try(PreparedStatement ps = conexion.prepareStatement(insert)){
            ps.setString(1,param1);
            ps.setDouble(2, param2);
            ps.setDouble(3, param3);
            ps.executeUpdate();  
            JOptionPane.showMessageDialog(null, "Se guardó correctamente", "operacion", JOptionPane.INFORMATION_MESSAGE);
        }
        catch(SQLException ex){
            JOptionPane.showMessageDialog(null, "error al guardar: " + ex, "operacion", JOptionPane.ERROR_MESSAGE);
        }
        
    }
    
    public static void SeleccionarInv(JTable TablaInv, JTextPane producto, JTextPane precioU, JTextPane stock){
        try{
            int fila = TablaInv.getSelectedRow();
            if (fila >= 0) {
                producto.setText(TablaInv.getValueAt(fila,1).toString());
                precioU.setText(TablaInv.getValueAt(fila,2).toString());
                stock.setText(TablaInv.getValueAt(fila,3).toString());
            }
            else{
                JOptionPane.showMessageDialog(null, "Fila no seleccionada", "operacion", JOptionPane.ERROR_MESSAGE);
            }
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null, "error al modificar: " + e, "operacion", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public static void ModificarInventario(String param1, double  param2, double param3){
        Connection conexion = conectar();
        String param4 = param1;
        String Modificar = "UPDATE inventario SET inventario_nombre = ?, inventario_precio_unitario = ?, inventario_cantidad = ? WHERE inventario_nombre = ?";
        try(PreparedStatement ps = conexion.prepareStatement(Modificar)){
            ps.setString(1,param1);
            ps.setDouble(2, param2);
            ps.setDouble(3, param3);
            ps.setString(4, param4);
            
            ps.executeUpdate();        
            JOptionPane.showMessageDialog(null, "Se modificó correctamente ", "operacion", JOptionPane.INFORMATION_MESSAGE);
        }
        catch(SQLException ex){
            JOptionPane.showMessageDialog(null, "error al modificar: " + ex, "operacion", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public static void EliminarInventario(String param1){
        Connection conexion = conectar();
        String Modificar = "DELETE FROM inventario WHERE inventario_nombre = ?";
        try(PreparedStatement ps = conexion.prepareStatement(Modificar)){
            ps.setString(1,param1);
            ps.executeUpdate();        
            JOptionPane.showMessageDialog(null, "Se eliminó correctamente ", "operacion", JOptionPane.INFORMATION_MESSAGE);
        }
        catch(SQLException ex){
            JOptionPane.showMessageDialog(null, "error al eliminar: " + ex, "operacion", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public static void MostrarInventario(){        
        JTinventario.setModel(modeloInv);
    }
}
    