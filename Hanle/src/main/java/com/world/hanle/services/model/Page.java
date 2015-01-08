package com.world.hanle.services.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;

@Entity
public class Page extends GenericModel {

	private static final long serialVersionUID = 1L;
	
	private Integer pageTypeId;
//	@OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
//	@JoinColumn(name = "boardId", referencedColumnName="id", insertable=false, updatable=false)
//	@OrderBy("createdDate DESC")
//	private List<Content> contents;
	
	public Integer getPageTypeId() {
		return pageTypeId;
	}
	public void setPageTypeId(Integer pageTypeId) {
		this.pageTypeId = pageTypeId;
	}
//	public List<Content> getContents() {
//		if(contents == null) contents = new ArrayList<Content>();
//		return contents;
//	}
//	public void setContents(List<Content> contents) {
//		this.contents = contents;
//	}
}
