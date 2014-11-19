package com.world.hanle.services.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

@Service
@Transactional
public class GenericService<T> {

	static private final String REGION = "services";
	
	@PersistenceContext(unitName = "localEntityManagerUnit")
	private EntityManager em;
	
	private T type;
	private String table = type.getClass().getSimpleName();
	private String SELECT_ALL_SQL = "SELECT * FROM " + this.table;
	private String SELECT_COUNT_SQL = "SELECT count(*) FROM " + this.table;

	public T add(T entity) {
		em.persist(entity);
		return entity;
	}
	
	public T get(Integer id) {
		String where = " WHERE id=:id";
		return (T)em.createNativeQuery(SELECT_ALL_SQL + where, type.getClass()).setParameter("id", id).getSingleResult();
	}
	
	public List<T> gets() {
		return em.createNativeQuery(SELECT_ALL_SQL, type.getClass()).getResultList();
	}
	
	public List<T> search(String keyword, String[] keys) {
		String sqlKeyword = ("%" + keyword + "%").toLowerCase();
		String where = " WHERE ";
		if(keys.length == 0) keys = new String[]{"name"};
		for (int i=0; i<keys.length; i++) {
			if(i!=0) where += " AND ";
			where += "LOWER(" + keys[i] + ") LIKE :keyword";
		}
		return em.createNativeQuery(SELECT_ALL_SQL + where).setParameter("keyword", sqlKeyword).getResultList();
	}
	
	public T update(T entity) {
		return em.merge(entity);
	}
	
	public long count() {
		return em.createNamedQuery(SELECT_COUNT_SQL, Long.class).getSingleResult();
	}
	
	public Integer delete(Integer id) {
		em.remove(this.get(id));
		return id;
	}
}
