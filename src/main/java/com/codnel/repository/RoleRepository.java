package com.codnel.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codnel.domain.Role;

@Repository
public interface RoleRepository extends CrudRepository<Role, Integer>{
	
}
