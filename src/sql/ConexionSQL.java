package sql;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;
import java.sql.Connection;
import java.sql.DriverManager;


public class ConexionSQL{
    
    static Connection conn = null;
    static String url = "jdbc:postgresql://localhost:5432/Kokos_Pizza";
    static String usuario = "postgres";
    static String clave = "adminn";

    public static Connection conectar() {
        try {
            conn = DriverManager.getConnection(url, usuario, clave);
            return conn;
        }
        catch(Exception e){
                
        }
        return null;
    }
    
    
    
    public static String[] Consol(String key, int p){
        
        Connection conexion = conectar();
            try (PreparedStatement ps = conexion.prepareStatement(key)) {
                ps.setInt(1,p);
                
                try (ResultSet rs = ps.executeQuery()) {
                    if (rs.next()) {
                        int id = rs.getInt("usuario_id");
                        String nombre = rs.getString("usuario_nombre");
                        String apellidos = rs.getString("usuario_apellidos");
                        boolean admin = rs.getBoolean("admin");
                        String contraseña = rs.getString("contraseña");
                        
                        String ide = String.valueOf(id);
                        String adminn = String.valueOf(admin);
                        
                        return new String[]{ide, nombre, apellidos, adminn, contraseña};   
                        
                        
                    } 
                    else {
                        JOptionPane.showMessageDialog(null, "Usuario no encontrado", "Error", JOptionPane.ERROR_MESSAGE);
                    }
                        
                        JOptionPane.showMessageDialog(null, "Usuario encontrado", "Exito", JOptionPane.INFORMATION_MESSAGE);
                    
                
                }
                catch (SQLException ex) {
                    JOptionPane.showMessageDialog(null, "Error al obtener usuario: " + ex.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
                }
                
            } 
            catch (SQLException ex) {
                JOptionPane.showMessageDialog(null, "operacion fallida" + ex, "operacion", JOptionPane.ERROR_MESSAGE);
                return null;
            }
            
        return null;
    }      
    
    
    
    public static String[] ConsultarPizza(String consulta, String param1, String param2, String param3, int contador){
        Connection conexion = conectar();
            try (PreparedStatement ps = conexion.prepareStatement(consulta)) {
                ps.setString(1,param1);
                ps.setString(2,param2);
                ps.setString(3,param3);
                
                try (ResultSet rs = ps.executeQuery()) {
                    if (rs.next()) {
                        int id = rs.getInt("pizza_id");
                        String especialidad = rs.getString("pizza_nombre");
                        String tamaño = rs.getString("pizza_tamaño");
                        int precio = rs.getInt("pizza_precio");
                        String ingredientes = rs.getString("pizza_ingredientes");
                        String orilla = rs.getString("pizza_orilla");
                        switch (contador) {
                            case 2 -> precio += 20;
                            case 3 -> precio += 40;
                            case 4 -> precio += 60;
                            default ->{
                            }
                        }
                        String ide = String.valueOf(id);
                        String precioS = String.valueOf(precio);
                        
                        
                        return new String[]{ide, especialidad, tamaño, precioS, ingredientes, orilla};   
                        
                        
                    } 
                    else {
                        JOptionPane.showMessageDialog(null, "Pizza no encontrada", "Error", JOptionPane.ERROR_MESSAGE);
                    }
                        
                        
                
                }
                catch (SQLException ex) {
                    JOptionPane.showMessageDialog(null, "Error al obtener la pizza " + ex.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
                }
                
            } 
            catch (SQLException ex) {
                JOptionPane.showMessageDialog(null, "operacion fallida" + ex, "operacion", JOptionPane.ERROR_MESSAGE);
                return null;
            }
            
        return null;
    }
    
    public static String[] ConsultarAlitas(String consulta, String param1, String param2){
        Connection conexion = conectar();
            try (PreparedStatement ps = conexion.prepareStatement(consulta)) {
                ps.setString(1,param1);
                ps.setString(2,param2);
                
                try (ResultSet rs = ps.executeQuery()) {
                    if (rs.next()) {
                        int ide = rs.getInt("alitas_id");
                        String especialidad = rs.getString("alitas_nombre");
                        String tamaño = rs.getString("alitas_tamaño");
                        double precioS = rs.getDouble("alitas_precio");
                        String ingredientes = rs.getString("alitas_ingredientes");
                        
                        String id = String.valueOf(ide);
                        String precio = String.valueOf(precioS);
                        
                        return new String[]{id, especialidad, tamaño, precio, ingredientes};   
                        
                    } 
                    else {
                        JOptionPane.showMessageDialog(null, "Pizza no encontrada", "Error", JOptionPane.ERROR_MESSAGE);
                    }
                }
                catch (SQLException ex) {
                    JOptionPane.showMessageDialog(null, "Error al obtener la pizza " + ex.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
                }
            } 
            catch (SQLException ex) {
                JOptionPane.showMessageDialog(null, "operacion fallida" + ex, "operacion", JOptionPane.ERROR_MESSAGE);
                return null;
            }
        return null;
    }
    
    public static String[] ConsultarBoneless(String consulta, String param1){
        Connection conexion = conectar();
            try (PreparedStatement ps = conexion.prepareStatement(consulta)) {
                ps.setString(1,param1);
                
                try (ResultSet rs = ps.executeQuery()) {
                    if (rs.next()) {
                        int ide = rs.getInt("boneless_id");
                        String especialidad = rs.getString("boneless_nombre");
                        String tamaño = rs.getString("boneless_tamaño");
                        double precioS = rs.getDouble("boneless_precio");
                        String ingredientes = rs.getString("boneless_ingredientes");
                        
                        String id = String.valueOf(ide);
                        String precio = String.valueOf(precioS);
                        
                        return new String[]{id, especialidad, tamaño, precio, ingredientes};   
                        
                    } 
                    else {
                        JOptionPane.showMessageDialog(null, "Boneless no encontrado", "Error", JOptionPane.ERROR_MESSAGE);
                    }
                }
                catch (SQLException ex) {
                    JOptionPane.showMessageDialog(null, "Error al obtener el boneless  " + ex.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
                }
            } 
            catch (SQLException ex) {
                JOptionPane.showMessageDialog(null, "operacion fallida" + ex, "operacion", JOptionPane.ERROR_MESSAGE);
                return null;
            }
        return null;
    }
    
    public static String[] ConsultarRefresco(String consulta, String param1, String param2){
        Connection conexion = conectar();
            try (PreparedStatement ps = conexion.prepareStatement(consulta)) {
                ps.setString(1,param1);
                ps.setString(2,param2);
                
                try (ResultSet rs = ps.executeQuery()) {
                    if (rs.next()) {
                        int ide = rs.getInt("refresco_id");
                        String especialidad = rs.getString("refresco_nombre");
                        String tamaño = rs.getString("refresco_tamaño");
                        double precioS = rs.getDouble("refresco_precio");
                        
                        String id = String.valueOf(ide);
                        String precio = String.valueOf(precioS);
                        
                        return new String[]{id, especialidad, tamaño, precio};   
                        
                    } 
                    else {
                        JOptionPane.showMessageDialog(null, "Refresco no encontrado", "Error", JOptionPane.ERROR_MESSAGE);
                    }
                }
                catch (SQLException ex) {
                    JOptionPane.showMessageDialog(null, "Error al obtener el refresco " + ex.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
                }
            } 
            catch (SQLException ex) {
                JOptionPane.showMessageDialog(null, "operacion fallida" + ex, "operacion", JOptionPane.ERROR_MESSAGE);
                return null;
            }
        return null;
    }
    
    public static String[] ConsultarPaps(String consulta, String param1){
        Connection conexion = conectar();
            try (PreparedStatement ps = conexion.prepareStatement(consulta)) {
                ps.setString(1,param1);
                
                try (ResultSet rs = ps.executeQuery()) {
                    if (rs.next()) {
                        int ide = rs.getInt("papas_id");
                        String especialidad = rs.getString("papas_nombre");                        
                        String ingredientes = rs.getString("papas_ingredientes");
                        double precioS = rs.getDouble("papas_precio");
                        
                        String id = String.valueOf(ide);
                        String precio = String.valueOf(precioS);
                        
                        return new String[]{id, especialidad, precio, ingredientes};   
                        
                    } 
                    else {
                        JOptionPane.showMessageDialog(null, "Papas no encontradas", "Error", JOptionPane.ERROR_MESSAGE);
                    }
                }
                catch (SQLException ex) {
                    JOptionPane.showMessageDialog(null, "Error al obtener las papas " + ex.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
                }
            } 
            catch (SQLException ex) {
                JOptionPane.showMessageDialog(null, "operacion fallida" + ex, "operacion", JOptionPane.ERROR_MESSAGE);
                return null;
            }
        return null;
    }
    
    public static void ConsultarCorteCaja(TableModel modeloTB, String aa, String mm, String dd){
        Connection conexion = conectar();
        String param1 = "'" + aa + "-" + mm +"-" + dd + " 00:00:00'";
        String param2 = "'" + aa + "-" + mm +"-" + dd + " 23:59:59'";
        String prueba = "SELECT DISTINCT pedido_id, pedido_precio_total FROM pedidos WHERE fecha BETWEEN(" + param1 + ") AND (" + param2 + ") GROUP BY pedido_id, pedido_precio_total ORDER BY pedido_id";
        List<String> idList = new ArrayList<>();
        List<String> ingresosList = new ArrayList<>();
        
            try (PreparedStatement ps = conexion.prepareStatement(prueba)) {
                
                try (ResultSet rs = ps.executeQuery()) {
                    try{
                        while (rs.next()) {
                            int ide = rs.getInt("pedido_id");
                            double Ingresos = rs.getDouble("pedido_precio_total");
                                
                            String id = String.valueOf(ide);
                            String Ingreso = String.valueOf(Ingresos);
                            
                            idList.add(id);
                            ingresosList.add(Ingreso);
                                               
                        } 
                    }
                    catch(SQLException e) {
                        JOptionPane.showMessageDialog(null, "No hay datos registrados en esa fecha: " + e, "Error", JOptionPane.ERROR_MESSAGE);
                    }
                }
                catch (SQLException ex) {
                    JOptionPane.showMessageDialog(null, "Error al obtener los datos: " + ex.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
                    JOptionPane.showMessageDialog(null, ps, "Error", JOptionPane.ERROR_MESSAGE);
                   
                }
            } 
            catch (SQLException ex) {
                JOptionPane.showMessageDialog(null, "operacion fallida" + ex, "operacion", JOptionPane.ERROR_MESSAGE);
                
            }
        for (int i = 0; i < idList.size(); i++) {
            
            Object[] CCfila = {idList.get(i), ingresosList.get(i), "null", "null"};
            ((DefaultTableModel) modeloTB).addRow(CCfila);
        }         
    }
    
    
    
    public static void GuardarPedido(String consulta, String[] Productos, double[] Precios, double PrecioTotal){
        Connection conexion = conectar();
        int secuencia = Secuencia();
            try(PreparedStatement ps = conexion.prepareStatement(consulta)){
                StringBuilder values = new StringBuilder();
                for(int i = 0; i < Productos.length ; i++) {
                    values.append("(")
                    .append(secuencia).append(", ")
                    .append(secuencia).append(",'")
                    .append(Productos[i]).append("', ")
                    .append(Precios[i]).append(", ")
                    .append(PrecioTotal).append("),");
                }
                values.deleteCharAt(values.length() - 1);
                String Insercion = String.valueOf(ps) + String.valueOf(values);
                
                PreparedStatement lins = conexion.prepareStatement(Insercion);
                lins.executeUpdate();
            }
            catch(SQLException ex){
                JOptionPane.showMessageDialog(null, "Fallo al guardar el pedido: " + ex, "operacion", JOptionPane.ERROR_MESSAGE);
            }
        
    }
    
    public static void GuardarCliente(String consulta, String param1, String param2, String param3){
        Connection conexion = conectar();
        try(PreparedStatement ps = conexion.prepareStatement(consulta)){
            ps.setString(1,param1);
            ps.setString(2, param2);
            ps.setString(3, param3);
            
            ps.executeUpdate();        
        }
        catch(SQLException ex){
            JOptionPane.showMessageDialog(null, "error al insertar cliente: " + ex, "operacion", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    
    public void cerrar(){
        try{
            conn.close();  }
        catch(Exception e){
            JOptionPane.showMessageDialog(null, "desconexion fallida: " + e, "desconexion", JOptionPane.INFORMATION_MESSAGE);
        }
    }      
    
    public static int Secuencia(){
        Connection conexion = conectar();
        String consulta = "SELECT id FROM secuencia ORDER BY id DESC LIMIT 1";
        int secuencia = 0;
        int actualizar = 0;
        try (PreparedStatement ps = conexion.prepareStatement(consulta)) {
                
                try (ResultSet rs = ps.executeQuery()) {
                    if (rs.next()) {
                        secuencia = rs.getInt("id");   
                        actualizar = secuencia + 1;
                    } 
                    else {
                        JOptionPane.showMessageDialog(null, "elseerror:", "Error", JOptionPane.ERROR_MESSAGE);
                    }
                }
                catch (SQLException ex) {
                    JOptionPane.showMessageDialog(null, "segundocatch: " + ex + " " + ps, "Error", JOptionPane.ERROR_MESSAGE);
                }
            } 
            catch (SQLException ex) {
                JOptionPane.showMessageDialog(null, "primer catch: " + ex, "operacion", JOptionPane.ERROR_MESSAGE);
            }        
        actualizarsecuencia(actualizar);
        return secuencia;
    }
    
    public static void actualizarsecuencia(int valor1){
    Connection conexion = conectar();    
    String Insertar = "INSERT INTO secuencia(id) VALUES(?)";
    try(PreparedStatement ps = conexion.prepareStatement(Insertar)){
            ps.setInt(1, valor1);
            ps.executeUpdate();        
        }
        catch(SQLException ex){
            JOptionPane.showMessageDialog(null, "error al actualizar: " + ex, "operacion", JOptionPane.ERROR_MESSAGE);
        }
    }
    
}

