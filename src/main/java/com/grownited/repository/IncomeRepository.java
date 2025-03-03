package com.grownited.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.dto.IncomeDto;
import com.grownited.entity.AccountEntity;
import com.grownited.entity.IncomeEntity;
@Repository
public interface IncomeRepository extends JpaRepository<IncomeEntity, Integer> {
	Optional<AccountEntity>  findByUserId(Integer userId);
	@Query(value = "SELECT i.*, u.first_name FROM users u, incomes i WHERE i.user_id = u.user_id", nativeQuery = true)
	List<IncomeDto> getAll();
}
