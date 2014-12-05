package com.world.hanle.services.service;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.world.hanle.services.model.User;

@Service
@Transactional
public class UserService extends GenericService<User> {
	
}
