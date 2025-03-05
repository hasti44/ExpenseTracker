package com.grownited.dto;

public class VenderDto {
	Integer venderId;
	String venderTitle;
	Integer userId;
	String firstName;
	public VenderDto(Integer venderId, String venderTitle, Integer userId, String firstName) {
		
		this.venderId = venderId;
		this.venderTitle = venderTitle;
		this.userId = userId;
		this.firstName = firstName;
	}
	
	
}
