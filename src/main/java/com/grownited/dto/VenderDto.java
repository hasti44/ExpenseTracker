package com.grownited.dto;

public class VenderDto {
	private Integer venderId;
	private Integer userId;
	private String venderTitle;
	private String firstName;
	public VenderDto(Integer venderId, Integer userId, String venderTitle, String firstName) {
		
		this.venderId = venderId;
		this.userId = userId;
		this.venderTitle = venderTitle;
		this.firstName = firstName;
	}
	public Integer getVenderId() {
		return venderId;
	}
	public void setVenderId(Integer venderId) {
		this.venderId = venderId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getVenderTitle() {
		return venderTitle;
	}
	public void setVenderTitle(String venderTitle) {
		this.venderTitle = venderTitle;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	
	
}
