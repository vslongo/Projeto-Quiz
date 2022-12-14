package quiz.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import quiz.VO.Tema;


public class TemaDAO {
    private Connection con;

    public TemaDAO() {
        this.con = ConexaoBD.conectar();
    }
    
    public ArrayList<Tema> cosultarTema()
    {
        Statement stmt = null;
        ResultSet rs = null;
        ArrayList<Tema> temas = new ArrayList<>();
        try
        {
            stmt = con.createStatement();
            rs = stmt.executeQuery("select * from temas");
            while(rs.next())
            {
                Tema tema = new Tema();
                tema.setId_tema(rs.getInt("id_tema"));
                tema.setNome(rs.getString("nome"));                
                
                temas.add(tema);
            }
                   
            stmt.close();
            rs.close();
        }catch(SQLException e)
        {
            e.printStackTrace();
        }  
        return temas;
    }
}
