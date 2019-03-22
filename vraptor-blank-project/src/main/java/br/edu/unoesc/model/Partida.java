package br.edu.unoesc.model;

public class Partida {
	private String time1;
	private String time2;
	private int pontuacao1;
	private int pontuacao2;
	
	public String getTime1() {
		return time1;
	}
	public void setTime1(String time1) {
		this.time1 = time1;
	}
	public String getTime2() {
		return time2;
	}
	public void setTime2(String time2) {
		this.time2 = time2;
	}
	public int getPontuacao1() {
		return pontuacao1;
	}
	public void setPontuacao1(int pontuacao1) {
		this.pontuacao1 = pontuacao1;
	}
	public int getPontuacao2() {
		return pontuacao2;
	}
	public void setPontuacao2(int pontuacao2) {
		this.pontuacao2 = pontuacao2;
	}
	public Partida(String time1, String time2, int pontuacao1, int pontuacao2) {
		super();
		this.time1 = time1;
		this.time2 = time2;
		this.pontuacao1 = pontuacao1;
		this.pontuacao2 = pontuacao2;
	}
	public Partida() {
	}
	
	
}
