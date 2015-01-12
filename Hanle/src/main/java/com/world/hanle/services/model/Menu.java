package com.world.hanle.services.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;

@Entity
public class Menu extends GenericModel {

	private static final long serialVersionUID = 1L;
	
	private Integer parentId;
	private Integer sequency;
	@OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinColumn(name = "parentId", referencedColumnName="id", insertable=false, updatable=false)
	@OrderBy("sequency DESC")
	private List<Menu> child;
	
	public Integer getParentId() {
		return parentId;
	}
	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}
	public Integer getSequency() {
		return sequency;
	}
	public void setSequency(Integer sequency) {
		this.sequency = sequency;
	}
	public List<Menu> getChild() {
		return child;
	}
	public void setChild(List<Menu> child) {
		this.child = child;
	}
	
}
