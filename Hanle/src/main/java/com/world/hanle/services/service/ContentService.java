package com.world.hanle.services.service;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.world.hanle.services.model.Content;

@Service
@Transactional
public class ContentService extends GenericService<Content> {
	
}
