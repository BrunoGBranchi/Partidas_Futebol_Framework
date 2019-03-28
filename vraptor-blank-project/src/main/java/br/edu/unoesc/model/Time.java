package br.edu.unoesc.model;

public class Time {
	
	private Long codigo;
	private String nome;
	private Integer pontuacao;
	
	public Long getCodigo() {
		return codigo;
	}
	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public Integer getPontuacao() {
		return pontuacao;
	}
	public void setPontuacao(Integer pontuacao) {
		this.pontuacao = pontuacao;
	}
	public Time(Long codigo, String nome, Integer pontuacao) {
		super();
		this.codigo = codigo;
		this.nome = nome;
		this.pontuacao = pontuacao;
	}
	public Time() {
	}
	
	
	
	
}
