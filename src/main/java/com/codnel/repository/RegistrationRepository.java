package com.codnel.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codnel.domain.User;

@Repository
public interface RegistrationRepository extends CrudRepository<User, Integer> {

}
