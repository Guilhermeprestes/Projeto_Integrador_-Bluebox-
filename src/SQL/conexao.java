/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SQL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author Guilherme_Prestes
 */
public class conexao {
    public static Connection conect = null;
    
    public static Connection getConexion() {
        try {
           conect = null;
           
           Class.forName("com.mysql.jdbc.Driver");
           conect =DriverManager.getConnection("jdbc:mysql://localhost/bluebox_db?useSSL=false","root","31415926535");
           System.out.println("CONEXÃO CONCLUIDA");
       } catch (ClassNotFoundException | SQLException e) {
           System.out.println("ERRO DE CONEXÃO");
           JOptionPane.showMessageDialog(null, "ERRO NA CONEXÃO: "+e);
       }

        return conect;
    }

    public PreparedStatement preparedStatement(String sql_Notas) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
     

}