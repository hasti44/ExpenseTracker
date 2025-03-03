package com.grownited.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="venders")
public class VenderEntity {
	private Integer venderId;
	private String venderTitle;
	private Integer userId;//fk
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getVenderId() {
		return venderId;
	}
	public void setVenderId(Integer venderId) {
		this.venderId = venderId;
	}
	
	public String getVenderTitle() {
		return venderTitle;
	}
	public void setVenderTitle(String venderTitle) {
		this.venderTitle = venderTitle;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	
}
