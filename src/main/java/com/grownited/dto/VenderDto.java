package com.grownited.dto;

public class VenderDto {
	private Integer venderId;
	private String venderTitle;
	private Integer userId;
	private String firstName;
	public VenderDto(Integer venderId, String venderTitle, Integer userId, String firstName) {
		super();
		this.venderId = venderId;
		this.venderTitle = venderTitle;
		this.userId = userId;
		this.firstName = firstName;
	}
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
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	
}
