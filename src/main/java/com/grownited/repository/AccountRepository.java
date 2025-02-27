package com.grownited.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.AccountEntity;
@Repository
public interface AccountRepository extends JpaRepository<AccountEntity, Integer> {
	Optional<AccountEntity>  findByUserId(Integer userId);
}
