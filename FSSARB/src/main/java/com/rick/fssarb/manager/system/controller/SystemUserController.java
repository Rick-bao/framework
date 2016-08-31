package com.rick.fssarb.manager.system.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rick.fssarb.manager.system.bean.SystemUser;
import com.rick.fssarb.manager.system.service.SystemUserService;

/**
 * @category 系统用户控制器
 * @author rick
 * @since 2016年8月25日 11:53:55
 * @version v1.0.0
 * 
 */
@Controller
@RequestMapping("/sysUser/")
public class SystemUserController {
	
	@Resource
	private SystemUserService systemUserService;
	
	/**
	 * 获取系统用户列表
	 * @return
	 */
	@RequestMapping("getAllSysUser")
	public String getAllSysUser(){
		SystemUser systemUser = new SystemUser();
		List<SystemUser> systemUsers = systemUserService.getAllSysUser(systemUser);
		//request.setAttribute("systemUsers", systemUsers);
		
		return "redirect:/manager/systemUser/home";
	}
	
}
