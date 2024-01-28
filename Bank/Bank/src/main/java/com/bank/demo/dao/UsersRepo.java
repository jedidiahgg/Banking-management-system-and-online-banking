package com.bank.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bank.demo.model.Users;

public interface UsersRepo extends JpaRepository<Users, String>{
	
}