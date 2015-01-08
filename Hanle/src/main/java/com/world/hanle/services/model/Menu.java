package com.world.hanle.services.model;

import javax.persistence.Entity;

@Entity
public class Menu extends GenericModel {

	private static final long serialVersionUID = 1L;
	
	private Integer parentId;
	private Integer sequency;
	
	public Integer getParentId() {
		return parentId;
	}
	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}
	public Integer getSequency() {
		return sequency;
	}
	public void setOrder(Integer sequency) {
		this.sequency = sequency;
	}
	
}
