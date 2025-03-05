package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.dto.VenderDto;
import com.grownited.entity.UserEntity;
import com.grownited.entity.VenderEntity;
import com.grownited.repository.VenderRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class VenderController {
	@Autowired
	VenderRepository repoVender;
	
	@GetMapping("addVender")//name in url
	public String addVender() {

		return "addVender"; // jsp Name
	}
	
	@PostMapping("saveVender")//name in url
	public String saveVender(VenderEntity venderEntity, HttpSession session ) {
		
		UserEntity user = (UserEntity)session.getAttribute("user");//Object
		Integer userId = user.getUserId();
		venderEntity.setUserId(userId);
		
		repoVender.save(venderEntity);
		System.out.println("new Vender details and db insertion.... ");
		return "redirect:/listVender"; // jsp Name
	}
	
	@GetMapping("listVender")//name in url
	public String listVender(Model model ) {
		
		//List<VenderEntity> venderList = repoVender.findAll();
		List<VenderDto> venderList = repoVender.getAll();
		model.addAttribute("venderList", venderList);//("dataname",datavalue)
		                                
		
		return "listVender"; //login jsp name
	}
	
	@GetMapping("viewVender")
	public String viewVender(Integer venderId, Model model) {
			System.out.println(venderId);
			Optional<VenderEntity> op =  repoVender.findById(venderId);
			if(op.isEmpty()) {
				//no data found
			}else {
				VenderEntity v = op.get();
				model.addAttribute("v",v);
			}
		return "viewVender";
	}
	
	@GetMapping("deleteVender")
	public String deleteVender(Integer venderId) {
		System.out.println(venderId);
		repoVender.deleteById(venderId);
		return "redirect:/listVender";
	}
}
