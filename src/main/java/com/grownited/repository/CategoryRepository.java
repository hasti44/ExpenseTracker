package com.grownited.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.dto.CategoryDto;
import com.grownited.entity.CategoryEntity;

@Repository
public interface CategoryRepository extends JpaRepository<CategoryEntity, Integer>{
	Optional<CategoryEntity>  findByUserId(Integer userId);	
	@Query(value = "SELECT c.*, u.first_name FROM users u, categories c WHERE c.user_id = u.user_id", nativeQuery = true)
	List<CategoryDto> getAll();
}
