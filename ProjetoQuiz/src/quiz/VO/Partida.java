package quiz.VO;

import java.util.ArrayList;


public class Partida {
    private int id_partida;
    private int corretas;
    private ArrayList<Integer> questoes = new ArrayList<>();
    private int contador;

    public Partida() {
        this.id_partida = 0; 
    }
    
    public Partida(int corretas, ArrayList<Integer> questoes, int contador) {
        this.id_partida = 0;
        this.corretas = corretas;
        this.questoes = questoes;
        this.contador = contador;
    }

    public int getId_partida() {
        return id_partida;
    }

    public void setId_partida(int id_partida) {
        this.id_partida = id_partida;
    }

    public int getCorretas() {
        return corretas;
    }

    public void setCorretas(int corretas) {
        this.corretas = corretas;
    }

    public ArrayList<Integer> getQuestoes() {
        return questoes;
    }

    public void setQuestoes(ArrayList<Integer> questoes) {
        this.questoes = questoes;
    }

    public int getContador() {
        return contador;
    }

    public void setContador(int contador) {
        this.contador = contador;
    }

    @Override
    public String toString() {
        return "Partida: "+getId_partida();
    }
    
    
    

    
}
