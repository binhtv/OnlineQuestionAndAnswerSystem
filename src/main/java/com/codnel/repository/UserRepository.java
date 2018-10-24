package com.codnel.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.codnel.domain.User;

@Repository
public interface UserRepository extends CrudRepository<User, Integer>{
	@Query("select u from user u where u.username = :username")
	User findFromUsername(@Param("username") String username);
	
}
