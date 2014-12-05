package com.world.hanle.services.model;

import javax.persistence.Entity;

@Entity
public class User extends GenericModel {
	
	private static final long serialVersionUID = 1L;
	
	private String password;
	private String nickname;
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
}
