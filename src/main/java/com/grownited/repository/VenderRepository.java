package com.grownited.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.dto.VenderDto;
import com.grownited.entity.VenderEntity;

@Repository
public interface VenderRepository extends JpaRepository<VenderEntity, Integer> {
	Optional<VenderEntity>  findByUserId(Integer userId);
	
	@Query(nativeQuery = true, value = "SELECT v.*, u.first_name FROM venders v, users u where v.user_id = u.user_id")
	List<VenderDto> getAll();
}
