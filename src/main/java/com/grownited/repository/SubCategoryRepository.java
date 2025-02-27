package com.grownited.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.SubCategoryEntity;
@Repository
public interface SubCategoryRepository extends JpaRepository<SubCategoryEntity, Integer> {
	Optional<SubCategoryEntity> findByUserId(Integer userId);
	List<SubCategoryEntity> findByCategoryId(Integer categoryId);
}
