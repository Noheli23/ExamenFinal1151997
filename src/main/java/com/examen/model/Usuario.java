package com.examen.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.examen.model.Usuario;

import lombok.Data;

@Data
@Table(name="usuario")
@Entity
public class Usuario {

	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	
	@Column
	private String usuario;
	@Column
	private String email;
	@Column
	private String pass;
	@Column
	private String role;
	@Column
	private String state;
	public Usuario(Integer id, String usuario, String email, String pass, String role, String state) {
		super();
		this.id = id;
		this.usuario = usuario;
		this.email = email;
		this.pass = pass;
		this.role = role;
		this.state = state;
	}
	public Usuario(String usuario, String email, String pass, String role, String state) {
		super();
		this.usuario = usuario;
		this.email = email;
		this.pass = pass;
		this.role = role;
		this.state = state;
	}
	public Usuario() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	
}
