package quiz.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import quiz.VO.Usuario;

public class UsuarioDAO {
      private Connection con;
    
    public UsuarioDAO(){
        this.con = ConexaoBD.conectar();
    }
    
    public boolean cadastrarUsuario(Usuario usuario)
    {
        try
        {
            String sql = "insert into usuarios(nome, pontuacao,total_questoes) value (?,?,?)";
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, usuario.getNome());
            stmt.setInt(2, usuario.getPontuação());          
            stmt.setInt(3, usuario.getTotal());          
                     
            return stmt.execute();
        }catch(SQLException e)
        {
            e.printStackTrace();            
        }
        return false;
    }
    
    public ArrayList<Usuario> carregarUsuarios() {
        Statement stmt = null;
        ResultSet rs = null;
        ArrayList<Usuario> usuarios = new ArrayList<>();
        
        try {
            stmt = con.createStatement();
            rs = stmt.executeQuery("select * from usuarios");            
            while (rs.next()) {
                Usuario u = new Usuario();
                u.setId_usuario(rs.getInt("id_usuario"));
                u.setPontuação(rs.getInt("pontuacao"));
                u.setTotal(rs.getInt("total_questoes"));
                u.setNome(rs.getString("nome"));
                
                usuarios.add(u);
            }
            stmt.close();
            rs.close();            

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return usuarios;
    }
    
}
