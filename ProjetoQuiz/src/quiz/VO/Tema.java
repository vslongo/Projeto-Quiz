package quiz.VO;


public class Tema {
    private int id_tema;
    private String nome;

    public Tema() {
    }

    public Tema(int id_tema, String nome) {
        this.id_tema = id_tema;
        this.nome = nome;
    }

    public int getId_tema() {
        return id_tema;
    }

    public void setId_tema(int id_tema) {
        this.id_tema = id_tema;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    @Override
    public String toString() {
        return this.getNome();
    }
    
    
    
}
