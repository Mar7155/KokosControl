/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.login;

import javax.swing.*;
import javax.swing.JTable;
import javax.swing.table.TableModel;
import javax.swing.table.TableColumnModel;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import java.io.*;
import java.awt.BorderLayout;
/**
 *
 * @author Ron McMillan
 */
public class Excel {
    public static void exportToExcel(JTable table, String filePath) {
        try {
            TableModel model = table.getModel();
            FileOutputStream excelOut = new FileOutputStream(new File(filePath));
            Workbook workbook = new XSSFWorkbook();
            Sheet sheet = workbook.createSheet("TablaDatos");

            // Escribir encabezados de columna
            TableColumnModel tcm = table.getColumnModel();
            Row headerRow = sheet.createRow(0);
            for (int i = 0; i < tcm.getColumnCount(); i++) {
                headerRow.createCell(i).setCellValue(tcm.getColumn(i).getHeaderValue().toString());
            }

            // Escribir datos de la tabla
            for (int row = 0; row < model.getRowCount(); row++) {
                Row excelRow = sheet.createRow(row + 1);
                for (int col = 0; col < model.getColumnCount(); col++) {
                    Object value = model.getValueAt(row, col);
                    Cell cell = excelRow.createCell(col);
                    if (value != null) {
                        if (value instanceof Number) {
                            cell.setCellValue(((Number) value).doubleValue());
                        } else {
                            cell.setCellValue(value.toString());
                        }
                    }
                }
 }

            workbook.write(excelOut);
            workbook.close();
            excelOut.close();

        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
