package com.world.hanle.services.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;

public class Board extends GenericModel {

//	@OneToOne(fetch = FetchType.EAGER)
//	@JoinColumns({@JoinColumn(name = "groupId", referencedColumnName="groupId", insertable=false, updatable=false), @JoinColumn(name = "artifactId", referencedColumnName="artifactId", insertable=false, updatable=false)})
	@OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinColumn(name = "id", referencedColumnName="boardId", insertable=false, updatable=false)
	@OrderBy("createdDate DESC")
	private List<Content> contents;

	public List<Content> getContents() {
		return contents;
	}

	public void setContents(List<Content> contents) {
		this.contents = contents;
	}
}
