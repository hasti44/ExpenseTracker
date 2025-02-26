package com.grownited.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.UserEntity;
import com.grownited.entity.VenderEntity;

@Repository
public interface VenderRepository extends JpaRepository<VenderEntity, Integer> {
	Optional<UserEntity>  findByUserId(Integer userId);
}
