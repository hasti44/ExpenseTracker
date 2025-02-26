package com.grownited.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.CategoryEntity;
import com.grownited.entity.UserEntity;

@Repository
public interface CategoryRepository extends JpaRepository<CategoryEntity, Integer>{
	Optional<UserEntity>  findByUserId(Integer userId);	
}
