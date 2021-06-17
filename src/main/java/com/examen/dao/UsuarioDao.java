package com.examen.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import com.examen.model.Usuario;
import com.examen.util.HibernateUtil;

public class UsuarioDao {

	EntityManager entity = HibernateUtil.getEntityManagerFactory().createEntityManager();

	// guardar cliente
	public void saveUser(Usuario user) {
		entity.getTransaction().begin();
		entity.persist(user);
		entity.getTransaction().commit();
		//JPAUtil.shutdown();
	}

	// editar cliente
	public void updateUser(Usuario user) {
		entity.getTransaction().begin();
		entity.merge(user);
		entity.getTransaction().commit();
		/// JPAUtil.shutdown();
	}

	// buscar cliente
	public Usuario getUser(int id) {
		Usuario c = new Usuario();
		c = entity.find(Usuario.class, id);
		// JPAUtil.shutdown();
		return c;
	}

	/// eliminar cliente
	public void deleteUser(int id) {
		Usuario c = new Usuario();
		c = entity.find(Usuario.class, id);
		entity.getTransaction().begin();
		entity.remove(c);
		entity.getTransaction().commit();
	}

	// obtener todos los cliente
	public List<Usuario> getAllUser() {
		List<Usuario> listaClientes = new ArrayList<>();
		Query q = entity.createQuery("SELECT c FROM Usuario c");
		listaClientes = q.getResultList();
		return listaClientes;
	}
	
}
