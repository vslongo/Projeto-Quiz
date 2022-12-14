package quiz.VO;

public class Alternativa {
    private int id_alternativa;
    private String alternativa;
    private int id_questao;
    private boolean correta;

    public Alternativa() {
        this.id_alternativa = 0;
        this.id_questao = 0;
        this.alternativa = "";
        this.correta = false;     
    } 
    
    public Alternativa(int id_alternativa, String alternativa, int id_questao, boolean correta) {
        this.id_alternativa = id_alternativa;
        this.alternativa = alternativa;
        this.id_questao = id_questao;
        this.correta = correta;
    }

    public int getId_alternativa() {
        return id_alternativa;
    }

    public void setId_alternativa(int id_alternativa) {
        this.id_alternativa = id_alternativa;
    }

    public String getAlternativa() {
        return alternativa;
    }

    public void setAlternativa(String alternativa) {
        this.alternativa = alternativa;
    }

    public int getId_questao() {
        return id_questao;
    }

    public void setId_questao(int id_questao) {
        this.id_questao = id_questao;
    }

    public boolean isCorreta() {
        return correta;
    }

    public void setCorreta(boolean correta) {
        this.correta = correta;
    }

    @Override
    public String toString() {
        return getAlternativa();
    }
    
    
    
    
}
