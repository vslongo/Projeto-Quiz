package quiz.VO;

public class Usuario {
    private int id_usuario;
    private String nome;
    private int pontuação;
    private int total;

    public Usuario() {
    }

    public Usuario(String nome, int pontuação, int total) {
        this.id_usuario = 0;
        this.nome = nome;
        this.pontuação = pontuação;
        this.total = total;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getPontuação() {
        return pontuação;
    }

    public void setPontuação(int pontuação) {
        this.pontuação = pontuação;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    
    
    
    
}
