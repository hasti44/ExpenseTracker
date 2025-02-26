package com.grownited.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.AccountEntity;
import com.grownited.entity.UserEntity;
@Repository
public interface AccountRepository extends JpaRepository<AccountEntity, Integer> {
	Optional<UserEntity>  findByUserId(Integer userId);
}
