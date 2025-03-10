package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.dto.ExpenseDto;
import com.grownited.entity.ExpenseEntity;

@Repository
public interface ExpenseRepository extends JpaRepository<ExpenseEntity, Integer>{
	List<ExpenseEntity>  findByUserId(Integer userId);
	
	@Query(value="SELECT e.*, u.first_name, c.category_title, s.sub_category_title, v.vender_title, a.account_title FROM expenses e "
			+ "join users u on e.user_id=u.user_id "
			+ "join categories c on c.category_id=e.category_id "
			+ "join sub_categories s on e.sub_category_id = s.sub_category_id "
			+ "join venders v on e.vender_id = v.vender_id "
			+ "join accounts a on e.account_id=a.account_id", nativeQuery=true)
	List<ExpenseDto> getAll();
	
	@Query(value="select sum(amount) as amount , c.category_title from expenses e "
			+ "join categories c on e.category_id=c.category_id "
			+ "where e.user_id= :userId "
			+ "group by e.category_id", nativeQuery=true)
	List<Object[]> getExpenseChartDetail(Integer userId);
	
}
