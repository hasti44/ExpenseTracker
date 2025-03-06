package com.grownited.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.dto.SubCategoryDto;
import com.grownited.entity.SubCategoryEntity;
@Repository
public interface SubCategoryRepository extends JpaRepository<SubCategoryEntity, Integer> {
	Optional<SubCategoryEntity> findByUserId(Integer userId);
	List<SubCategoryEntity> findByCategoryId(Integer categoryId);
	@Query(nativeQuery=true, value="SELECT s.*,c.category_title,u.first_name FROM sub_categories s join users u on u.user_id=s.user_id join categories c on c.category_id =s.category_id")
	List<SubCategoryDto> getAll();
}
