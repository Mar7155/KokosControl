/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JPanel.java to edit this template
 */
package com.login;

import static com.login.CrearPedido.DatosPapas;
import static com.login.Refrescos.DatosRefresco;
import static com.login.Alitas.consultaAlitas;
import static com.login.Alitas.datosAlitas;
import static com.login.Alitas.tipo_Salsa;
import static com.login.Alitas.tipo_Tamaño;
import static com.login.Boneless.consultaBoneless;
import static com.login.Boneless.datosBoneless;
import static com.login.Boneless.tipo_Boneless;
import static com.login.CrearPedido.consultarPapas;
import static com.login.CrearPedido.tipo_papas;
import static com.login.Pizzas.Datospizza;
import static com.login.Pizzas.consultapizza;
import static com.login.Pizzas.contador;
import static com.login.Pizzas.especialidades;
import static com.login.Pizzas.tipo_orilla;
import static com.login.Pizzas.tipo_pizza;
import static com.login.Pizzas.tipo_tamaño;
import static com.login.Refrescos.consultarefresco;
import static com.login.Refrescos.tamaño_refresco;
import static com.login.Refrescos.tipo_refresco;
import static com.login.menu.DefModel;
import javax.swing.JPanel;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;
import sql.ConexionSQL;



public class Pedido extends javax.swing.JPanel {
    
    
    static String[] DatosGuardar;
    static String InsertarPedido = "INSERT INTO pedidos(pedido_id, cliente_id, pedido_descripcion, pedido_precio, pedido_precio_total) VALUES";
    
    public Pedido() {
        initComponents();
        tbPedido = new JTable();
    }
    
    
    public static DefaultTableModel estado(DefaultTableModel modelo) {
        modelo = new DefaultTableModel();
        modelo.addColumn("Producto");
        modelo.addColumn("Tamaño");
        modelo.addColumn("Cantidad");
        modelo.addColumn("Precio");
        
        return modelo;
    }    
    
    
    public static void MostrarPedido(JTable JTMod){
        
        JTMod.setModel(DefModel);
        
    }   
    
    public static void ConsultarPedidoP(){
        String cantidad = "1";
        switch (contador) {
            case 2 -> cantidad = "1/2";
            case 3 -> cantidad = "1/3";
            case 4 -> cantidad = "1/4";
            default -> {
            }
        }
        
        Datospizza = ConexionSQL.ConsultarPizza(consultapizza, tipo_pizza, tipo_tamaño, tipo_orilla, contador);
        if(contador == 2 || contador == 3 || contador == 4){
            Datospizza[1] = especialidades;
        }
        Object[] fila = {Datospizza[1], Datospizza[2], cantidad, Datospizza[3]};
        if("manchego".equals(Datospizza[5]) || "crema".equals(Datospizza[5]) ){
            fila[0] = fila[0] + " " + Datospizza[5];
        }
        DefModel.addRow(fila);
        DefModel.fireTableDataChanged();
    }
    
    public static void ConsultarPedidoA(){
        
        datosAlitas = ConexionSQL.ConsultarAlitas(consultaAlitas, tipo_Salsa, tipo_Tamaño);
        
        Object[] fila = {datosAlitas[1], datosAlitas[2], "1", datosAlitas[3]};
        DefModel.addRow(fila);
        DefModel.fireTableDataChanged();        
    }   
    public static void ConsultarPedidoB(){
        
        datosBoneless = ConexionSQL.ConsultarBoneless(consultaBoneless, tipo_Boneless);
        
        Object[] fila = {datosBoneless[1], datosBoneless[2], "1", datosBoneless[3]};
        DefModel.addRow(fila);
        DefModel.fireTableDataChanged();        
    } 
    
    public static void ConsultarPedidoR(){
        
        DatosRefresco = ConexionSQL.ConsultarRefresco(consultarefresco, tipo_refresco, tamaño_refresco);
        
        Object[] fila = {DatosRefresco[1], DatosRefresco[2], "1", DatosRefresco[3]};
        DefModel.addRow(fila);
        DefModel.fireTableDataChanged();        
    }   
    public static void ConsultarPedidoPaps(){
        
        DatosPapas = ConexionSQL.ConsultarPaps(consultarPapas, tipo_papas);
        
        Object[] fila = {DatosPapas[1], "sencilla", "1", DatosPapas[2]};
        DefModel.addRow(fila);
        DefModel.fireTableDataChanged();
    }   
    
    public static void ConsultarGuardarPedido(){
        
        String[][] datosTabla = new String[0][0];
        datosTabla = ExtraerDatos();
        String[] PedidoDescripcion = new String[datosTabla.length];
        double[] PedidoPrecio = new double[datosTabla.length];
        double PrecioTotal = 0;
                
        for (int i = 0; i < datosTabla.length; i++) {
            PedidoDescripcion[i] = datosTabla[i][0] + " " + datosTabla[i][1];   
            PedidoPrecio[i] = Double.parseDouble(datosTabla[i][3]);
        }
        for (double num : PedidoPrecio) {
            PrecioTotal += num;
        }               
        ConexionSQL.GuardarPedido(InsertarPedido,PedidoDescripcion, PedidoPrecio, PrecioTotal);
    }    
    
    public static String[][] ExtraerDatos(){
        int rowsTabla = DefModel.getRowCount();
        int columnTabla = DefModel.getColumnCount();
        String[][] datosdetabla = new String[rowsTabla][columnTabla];
        for (int i = 0; i < rowsTabla; i++){
            for (int j = 0; j < columnTabla; j++) {
               datosdetabla[i][j] = String.valueOf(DefModel.getValueAt(i,j));
            }            
        }        
        
        return datosdetabla;
    }
    
    public static void mostrarPanel(JPanel DjPanel){
        jPanel2.setSize(400, 690);
        jPanel2.setLocation(0,0);
        DjPanel.removeAll();
        DjPanel.add(jPanel2); 
        DjPanel.revalidate();
        DjPanel.repaint();
        
        
    }
    
    
    
    
    
    
    
    
    
    
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        Datos_pizza = new javax.swing.JLabel();
        jLEditar = new javax.swing.JLabel();
        jLGuardar = new javax.swing.JLabel();
        jLAgregar = new javax.swing.JLabel();
        jLEminar = new javax.swing.JLabel();
        jpanelTBb = new JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        tbPedido = new javax.swing.JTable();

        jPanel2.setBackground(new java.awt.Color(204, 204, 204));
        jPanel2.setPreferredSize(new java.awt.Dimension(325, 680));

        jLabel1.setFont(new java.awt.Font("Roboto", 1, 24)); // NOI18N
        jLabel1.setText("Pedido");

        Datos_pizza.setBackground(new java.awt.Color(255, 153, 0));

        jLEditar.setForeground(new java.awt.Color(0, 0, 0));
        jLEditar.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLEditar.setText("Editar");
        jLEditar.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        jLGuardar.setForeground(new java.awt.Color(0, 0, 0));
        jLGuardar.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLGuardar.setText("Guardar");
        jLGuardar.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        jLGuardar.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jLGuardarMouseClicked(evt);
            }
        });

        jLAgregar.setForeground(new java.awt.Color(0, 0, 0));
        jLAgregar.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLAgregar.setText("Agregar");
        jLAgregar.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        jLEminar.setForeground(new java.awt.Color(0, 0, 0));
        jLEminar.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLEminar.setText("Eliminar");
        jLEminar.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        tbPedido.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {

            }
        ));
        jScrollPane1.setViewportView(tbPedido);

        javax.swing.GroupLayout jpanelTBbLayout = new javax.swing.GroupLayout(jpanelTBb);
        jpanelTBb.setLayout(jpanelTBbLayout);
        jpanelTBbLayout.setHorizontalGroup(
            jpanelTBbLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 339, Short.MAX_VALUE)
        );
        jpanelTBbLayout.setVerticalGroup(
            jpanelTBbLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jpanelTBbLayout.createSequentialGroup()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 372, Short.MAX_VALUE)
                .addContainerGap())
        );

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(167, 167, 167)
                        .addComponent(jLabel1))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(Datos_pizza, javax.swing.GroupLayout.PREFERRED_SIZE, 243, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(30, 30, 30)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jpanelTBb, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addComponent(jLGuardar, javax.swing.GroupLayout.PREFERRED_SIZE, 67, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(18, 18, 18)
                                .addComponent(jLEditar, javax.swing.GroupLayout.PREFERRED_SIZE, 67, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(35, 35, 35)
                                .addComponent(jLEminar, javax.swing.GroupLayout.PREFERRED_SIZE, 67, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(18, 18, 18)
                                .addComponent(jLAgregar, javax.swing.GroupLayout.PREFERRED_SIZE, 67, javax.swing.GroupLayout.PREFERRED_SIZE)))))
                .addContainerGap(31, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addGap(31, 31, 31)
                .addComponent(jpanelTBb, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(80, 80, 80)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLEditar, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLAgregar, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLEminar, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLGuardar, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addComponent(Datos_pizza, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(33, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, 400, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel2, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 670, Short.MAX_VALUE)
        );
    }// </editor-fold>//GEN-END:initComponents

    private void jLGuardarMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLGuardarMouseClicked
        
    }//GEN-LAST:event_jLGuardarMouseClicked


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel Datos_pizza;
    private javax.swing.JLabel jLAgregar;
    private javax.swing.JLabel jLEditar;
    private javax.swing.JLabel jLEminar;
    private javax.swing.JLabel jLGuardar;
    private javax.swing.JLabel jLabel1;
    public static javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    public static javax.swing.JPanel jpanelTBb;
    public static javax.swing.JTable tbPedido;
    // End of variables declaration//GEN-END:variables

    static class tbPedido {

        public tbPedido() {
                
            tbPedido = new JTable();
            TableModel DefaultTableModel = new DefaultTableModel();
            tbPedido.setModel(DefaultTableModel);
        }
    }
}
