package com.grownited.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.dto.AccountDto;
import com.grownited.entity.AccountEntity;
@Repository
public interface AccountRepository extends JpaRepository<AccountEntity, Integer> {
	Optional<AccountEntity>  findByUserId(Integer userId);
	@Query(value = "SELECT a.*, u.first_name FROM users u, accounts a WHERE a.user_id = u.user_id", nativeQuery = true)
	List<AccountDto> getAll();
	
}
