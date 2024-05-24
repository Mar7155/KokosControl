/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package com.login;

import br.com.adilson.util.Extenso;
import br.com.adilson.util.PrinterMatrix;
import static com.login.menu.DefModel;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import javax.print.Doc;
import javax.print.DocFlavor;
import javax.print.DocPrintJob;
import javax.print.PrintService;
import javax.print.PrintServiceLookup;
import javax.print.SimpleDoc;
import javax.print.attribute.HashPrintRequestAttributeSet;
import javax.print.attribute.PrintRequestAttributeSet;


public class Impresion {
        
    
    public static void ImprimirTicket( String nombreCliente, String numeroCliente, String direccionCliente, double total, double pago, double cambio, String[][] DatosDelPedido){
        PrinterMatrix printer = new PrinterMatrix();
        
        int rowsTabla = DefModel.getRowCount();
        int columnTabla = DefModel.getColumnCount();
        String[] PedidoDescripcion = new String[DatosDelPedido.length+1];
        double[] PedidoPrecio = new double[DatosDelPedido.length+1];        
        int f = 0;
        for (int i = 0; i < DatosDelPedido.length; i++) {
            PedidoDescripcion[i] = DatosDelPedido[i][0] + " " + DatosDelPedido[i][1];   
            PedidoPrecio[i] = Double.parseDouble(DatosDelPedido[i][3]);
            f++;
        }
        
        DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        DateTimeFormatter timeFormatter = DateTimeFormatter.ofPattern("HH:mm:ss");

        LocalDateTime now = LocalDateTime.now();

        String fechaActual = now.format(dateFormatter);
        String horaActual = now.format(timeFormatter);

        String Cliente = nombreCliente;
        
        Extenso e = new Extenso ();
        
        e.setNumber(101.85);
        
        int TamañoTicket = 22 + rowsTabla;
        int j = 14;
        
        printer.setOutSize(TamañoTicket, 32);
        
        printer.printTextWrap(1, 2, 10, 32, "Koko's Pizza");
        printer.printTextWrap(2, 3, 6, 32, "CALLE 16 ENERO 2 SUR");
        printer.printTextWrap(3, 3, 9, 32, "COLONIA CENTRO");
        printer.printTextWrap(4, 3, 6, 32, "TECOZAUTLA, HGO, 42440");
        printer.printTextWrap(5, 3, 10, 32, "BIENVENIDOS");
        printer.printTextWrap(6, 3, 5, 32, "ABIERTO TODOS LOS DIAS");
        printer.printTextWrap(7, 3, 6, 32, "HORARIO 11:00 A 23:00");
        printer.printTextWrap(8, 3, 7, 32, fechaActual +" "+ horaActual);
        printer.printCharAtCol(10, 1, 32, "-");
        printer.printTextWrap(10, 1, 1, 32, "Cliente: " + Cliente);
        printer.printTextWrap(11, 1, 1, 32, "Tel: " + numeroCliente);
        printer.printTextWrap(12, 1, 1, 32, "Dir: " + direccionCliente);
        
        printer.printCharAtCol(14, 1, 32, "-");      
        for (int i = 0; i < PedidoDescripcion.length; i++) {
            //JOptionPane.showMessageDialog(null, "valores: " + PedidoDescripcion[i] + " " + PedidoPrecio[i], "operacion", JOptionPane.INFORMATION_MESSAGE);
        
            printer.printTextWrap(j, 1, 1, 32, PedidoDescripcion[i] + " $" + PedidoPrecio[i]);    
            j++;
        }
        printer.printCharAtCol(j, 1, 32, "-");
        j++;
        printer.printTextWrap(j, 1,4 , 32, "Total de Venta:   $" + total);
        j++;
        printer.printTextWrap(j, 1,4 , 32, "Su Pago:   $" + pago);
        j++;
        printer.printTextWrap(j, 1,4 , 32, "Su Cambio:   $" + cambio);
      
        printer.toFile("Impresión.txt");
        
        FileInputStream inputStream=null;
        
        try {
            inputStream = new FileInputStream("Impresión.txt");   
        } catch (FileNotFoundException ex) {
            ex.printStackTrace();
        }
        
        if (inputStream==null) {
            return;
        }
        
        DocFlavor docFormat = DocFlavor.INPUT_STREAM.AUTOSENSE;
        Doc document = new SimpleDoc(inputStream, docFormat, null);
        
        PrintRequestAttributeSet attributeSet = new HashPrintRequestAttributeSet();
        PrintService defaultPrintService = PrintServiceLookup.lookupDefaultPrintService();
        
        if (defaultPrintService!=null) {
            DocPrintJob printJob = defaultPrintService.createPrintJob();
            try {
            printJob.print(document, attributeSet); 
            } catch (Exception ex) {
                System.out.println("Error: "+e.toString());
            }
        }
        else{
            System.err.println("No hay una impresora instalada");
        }
        
        
    }
}

