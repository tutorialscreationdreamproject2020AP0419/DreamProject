package com.dream.tutorialcreator.repository;
	
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.dream.tutorialcreator.model.Users;

public interface UserRepository extends JpaRepository<Users, Integer>{
	Optional<Users> findByUserName(String userName);
}
