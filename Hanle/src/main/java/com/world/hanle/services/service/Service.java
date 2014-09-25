package com.world.hanle.services.service;

public class Service<T> {
	private String SELECT_ALL_SQL = "SELECT * FROM ";

	public Object get(T object, Integer id) {
		String table = object.getClass().getSimpleName();
		String sql = SELECT_ALL_SQL + table;
		String where = " WHERE id=:id";
		
		return null;
	}
}
