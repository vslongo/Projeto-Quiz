package quiz.DAO;

import com.google.gson.Gson;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import quiz.VO.Partida;

public class PartidaDAO {

    private Connection con;

    public PartidaDAO() {
        this.con = ConexaoBD.conectar();
    }
    
    public ArrayList<Partida> carregarPartidas() {
        Statement stmt = null;
        ResultSet rs = null;
        ArrayList<Partida> partidas = new ArrayList<>();
        
        try {
            stmt = con.createStatement();
            rs = stmt.executeQuery("select * from partidas");            
            while (rs.next()) {
                Partida p = new Partida();
                p.setId_partida(rs.getInt("Id_partida"));
                p.setCorretas(rs.getInt("corretas"));
                p.setContador(rs.getInt("contador"));
                String json = rs.getString("questoes");
                
                ArrayList<Integer> questoes = new ArrayList<>(); 
                String[] idQ = json.split("\\W+");
                for (String ss : idQ) {
                    if (!ss.equals("")) {
                        questoes.add(Integer.parseInt(ss));
                    }

                }
            
                p.setQuestoes(questoes);
                partidas.add(p);
            }
            stmt.close();
            rs.close();            

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return partidas;
    }
     

    public boolean cadastrarPartida(Partida partida) {

        String json = new Gson().toJson(partida.getQuestoes());         
        try {
            String sql = "insert into partidas(corretas, questoes,contador) value (?,?,?)";
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setInt(1, partida.getCorretas());
            stmt.setString(2, json);
            stmt.setInt(3, partida.getContador());
            return stmt.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public Partida carregarPartida(int idPartida) {
        Statement stmt = null;
        ResultSet rs = null;
        try {
            stmt = con.createStatement();
            rs = stmt.executeQuery("select * from partidas where id_partida = "+idPartida);
            Partida p = new Partida();
            while (rs.next()) {

                p.setCorretas(rs.getInt("corretas"));
                p.setContador(rs.getInt("contador"));
                String json = rs.getString("questoes");
                
                ArrayList<Integer> questoes = new ArrayList<>(); 
                String[] idQ = json.split("\\W+");
                for (String ss : idQ) {
                    if (!ss.equals("")) {
                        questoes.add(Integer.parseInt(ss));
                    }
                }
            

                p.setQuestoes(questoes);
            }
            stmt.close();
            rs.close();
            return p;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

}
