/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SQL;

import GUI.Login;
import GUI.homeAdm;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Guilherme_Prestes
 */
public class ProdutoDAO {
    DefaultTableModel modelo;
    String[] tColunas = {"ID","Marca","Cor","Ano","Valor"};
    String info[][]={};  
    
    
    
    public void carregarProdutos(){
      modelo = new DefaultTableModel(info,tColunas){
          public boolean is (int row, int coluna){
              return false;
          }
      };
      
      homeAdm.TabelaBuscaProdutos.setModel(modelo);
      
      executarConsultaTabelaToda();
        
    }
    public void carregarProdutosLog(){
      modelo = new DefaultTableModel(info,tColunas){
          public boolean is (int row, int coluna){
              return false;
          }
      };
        
      Login.TabelaBuscaProdutos.setModel(modelo);
      executarConsultaTabelaToda();
        
    }
    
    Connection conect = null;
    Statement stmt = null;
    ResultSet rs = null;
    PreparedStatement ps = null;
    
    public void executarConsultaTabelaToda(){
        try {
            
            conect = conexao.getConexion();
            stmt = conect.createStatement();
            String consultaSQL = "SELECT * FROM produto_tb ORDER BY id_produto ASC";
            rs = stmt.executeQuery(consultaSQL);
            
            while (rs.next()){
                String Id = rs.getString("id_produto");
                String Marca = rs.getString("marca");
                String Cor = rs.getString("cor");
                String Ano = rs.getString("ano");
                String Valor = rs.getString("valor");
                Object[] info = {Id, Marca, Cor, Ano, Valor};
                
                modelo.addRow(info);
            }
            
            
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "ERRO SQL:\n" + e);
        } catch (Exception e){
            JOptionPane.showMessageDialog(null,e);
            conect = null;
        }
 
    }

}
