/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package quiz.DAO;

import java.sql.Connection; 
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexaoBD {
    private static final String driver = "com.mysql.cj.jdbc.Driver";
    private static final String url = "jdbc:mysql://localhost/projeto_quiz";
    private static final String usuario = "root";
    private static final String senha = "7878Th";
    
    
    public static Connection conectar()
    {
        Connection con = null;
            try
            {
            Class.forName(driver);
            con = DriverManager.getConnection(url,usuario,senha);            
            }catch(ClassNotFoundException e)
            {
                System.out.println("Erro  driver");
            }catch(SQLException e)
            {
                System.out.println("Erro conexão");
            }
        return con;
    }   
    
    
    public static void main(String[] args) {
        ConexaoBD.conectar();
    }
}
