package com.grownited.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.AccountEntity;
import com.grownited.entity.IncomeEntity;
@Repository
public interface IncomeRepository extends JpaRepository<IncomeEntity, Integer> {
	Optional<AccountEntity>  findByUserId(Integer userId);
	Optional<AccountEntity>  findByAccountId(Integer accountId);
}
