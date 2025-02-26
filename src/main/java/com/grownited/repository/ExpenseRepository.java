package com.grownited.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.ExpenseEntity;
import com.grownited.entity.UserEntity;

@Repository
public interface ExpenseRepository extends JpaRepository<ExpenseEntity, Integer>{
	Optional<UserEntity>  findByUserId(Integer userId);

}
