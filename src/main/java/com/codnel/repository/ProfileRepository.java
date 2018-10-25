package com.codnel.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.codnel.domain.Profile;

@Repository
public interface ProfileRepository extends CrudRepository<Profile, Integer>{
	@Query("select p from profile p where p.user.id = :userid")
	Profile findFromUserId(@Param("userid") Integer userid);
}
