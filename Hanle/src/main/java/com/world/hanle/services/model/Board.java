package com.world.hanle.services.model;

import java.util.List;

public class Board extends GenericModel {

	private List<Contents> contentsList;

	public List<Contents> getContentsList() {
		return contentsList;
	}

	public void setContentsList(List<Contents> contentsList) {
		this.contentsList = contentsList;
	}
}
