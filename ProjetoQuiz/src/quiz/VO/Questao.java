
package quiz.VO;

import java.util.ArrayList;

public class Questao {
    private int id_questao;
    private String questao;
    private int id_tema;
    private int dificuldade;
    private ArrayList<Alternativa> alternativas = new ArrayList<>();

    
    public Questao() {
        this.id_questao = 0;
        this.questao = "";
        this.id_tema = 0;
        this.dificuldade = 0;
    }
    
    public Questao(int id_questao, String questao, int id_tema, int dificuldade) {
        this.id_questao = id_questao;
        this.questao = questao;
        this.id_tema = id_tema;
        this.dificuldade = dificuldade;
    }

    public int getId_questao() {
        return id_questao;
    }

    public void setId_questao(int id_questao) {
        this.id_questao = id_questao;
    }

    public String getQuestao() {
        return questao;
    }

    public void setQuestao(String questao) {
        this.questao = questao;
    }

    public int getId_tema() {
        return id_tema;
    }

    public void setId_tema(int id_tema) {
        this.id_tema = id_tema;
    }

    public int getDificuldade() {
        return dificuldade;
    }

    public void setDificuldade(int dificuldade) {
        this.dificuldade = dificuldade;
    }
     
    public void addAlternativa(Alternativa alternativa) {
        alternativas.add(alternativa);
    }
    
    public ArrayList<Alternativa> getAlternativas() {
        return alternativas;
    }
    
    
    //Excluir
    @Override
    public String toString() {
        return Integer.toString(getId_questao());
    }
    
       
    
    
    
    
    
    
    
    
}
