package quiz.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import quiz.VO.Alternativa;
import quiz.VO.Questao;

public class QuestaoDAO {

    private Connection con;

    public QuestaoDAO() {
        this.con = ConexaoBD.conectar();
    }

    public ArrayList<Questao> cosultarQuestoes() {
        Statement stmt = null;
        ResultSet rs = null;
        Statement stmtAlt = null;
        ResultSet rsAlt = null;
        ArrayList<Questao> questoes = new ArrayList<>();
        try {
            stmt = con.createStatement();
            rs = stmt.executeQuery("select * from questao");

            while (rs.next()) {
                Questao questao = new Questao();
                questao.setQuestao(rs.getString("questao"));
                questao.setId_tema(rs.getInt("id_tema"));
                questao.setDificuldade(rs.getInt("dificuldade"));
                try {
                    stmtAlt = con.createStatement();
                    rsAlt = stmtAlt.executeQuery("select * from alternativas where id_questao = " + rs.getInt("id_questao"));
                    while (rsAlt.next()) {
                        Alternativa alternativa = new Alternativa();

                        alternativa.setAlternativa(rsAlt.getString("alternativa"));
                        alternativa.setCorreta(rsAlt.getBoolean("correta"));

                        questao.addAlternativa(alternativa);
                    }

                } catch (SQLException e) {
                    e.printStackTrace();
                }

                questoes.add(questao);
            }

            stmt.close();
            rs.close();
            stmtAlt.close();
            rsAlt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return questoes;
    }

    public ArrayList<Questao> cosultarQuestoesFinal(int quantidade, int nivel, int tema) {
        Statement stmt = null;
        ResultSet rs = null;
        Statement stmtAlt = null;
        ResultSet rsAlt = null;
        ArrayList<Questao> questoes = new ArrayList<>();
        try {
            stmt = con.createStatement();
            rs = stmt.executeQuery("select * from questao where dificuldade =" + (nivel ) + " and id_tema =" + tema + " order by rand() limit 0," + quantidade);
            while (rs.next()) {                
                Questao questao = new Questao();
                questao.setId_questao(rs.getInt("id_questao"));
                questao.setQuestao(rs.getString("questao"));
                questao.setId_tema(rs.getInt("id_tema"));
                questao.setDificuldade(rs.getInt("dificuldade"));
                try {
                    
                    stmtAlt = con.createStatement();
                    rsAlt = stmtAlt.executeQuery("select * from alternativas where id_questao = " + rs.getInt("id_questao")+" order by rand()");
                    while (rsAlt.next()) {
                        Alternativa alternativa = new Alternativa();

                        alternativa.setAlternativa(rsAlt.getString("alternativa"));
                        alternativa.setCorreta(rsAlt.getBoolean("correta"));

                        questao.addAlternativa(alternativa);
                    }

                } catch (SQLException e) {
                    e.printStackTrace();
                }

                questoes.add(questao);
            }

            stmt.close();
            rs.close();
            stmtAlt.close();
            rsAlt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return questoes;
    }

    public ArrayList<Questao> carregarQuestoes(ArrayList<Integer> idquestoes) {
        Statement stmt = null;
        ResultSet rs = null;
        Statement stmtAlt = null;
        ResultSet rsAlt = null;
        ArrayList<Questao> questoes = new ArrayList<>();
        for (Integer idquestao : idquestoes) {
            try {

                stmt = con.createStatement();
                rs = stmt.executeQuery("select * from questao where id_questao = " + idquestao);
                
                while (rs.next()) {
                    Questao questao = new Questao();
                questao.setId_questao(rs.getInt("id_questao"));
                questao.setQuestao(rs.getString("questao"));
                questao.setId_tema(rs.getInt("id_tema"));
                questao.setDificuldade(rs.getInt("dificuldade"));
                try {
                    
                    stmtAlt = con.createStatement();
                    rsAlt = stmtAlt.executeQuery("select * from alternativas where id_questao = " + rs.getInt("id_questao")+" order by rand()");
                    while (rsAlt.next()) {
                        Alternativa alternativa = new Alternativa();

                        alternativa.setAlternativa(rsAlt.getString("alternativa"));
                        alternativa.setCorreta(rsAlt.getBoolean("correta"));

                        questao.addAlternativa(alternativa);
                    }

                } catch (SQLException e) {
                    e.printStackTrace();
                }

                questoes.add(questao);
            }

            stmt.close();
            rs.close();
            stmtAlt.close();
            rsAlt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        }
        return questoes;
    }

}
