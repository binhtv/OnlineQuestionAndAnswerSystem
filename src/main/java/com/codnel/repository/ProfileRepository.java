package com.codnel.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codnel.domain.Profile;

@Repository
public interface ProfileRepository extends CrudRepository<Profile, Integer>{
	
}
