package br.edu.unoesc.model;

public class Time {
	
	private Long codigo;
	private String nome;
	
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
	public Time(Long codigo, String nome) {
		super();
		this.codigo = codigo;
		this.nome = nome;
	}
	public Time() {
	}
	
	
	
}
