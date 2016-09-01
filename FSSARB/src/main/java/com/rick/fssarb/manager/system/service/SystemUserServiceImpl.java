package com.rick.fssarb.manager.system.service;

import java.util.List;

import com.rick.fssarb.manager.system.bean.SystemUser;
import com.rick.fssarb.manager.system.dao.SystemUserDao;

/**
 * @category 系统用户服务层
 * @author rick
 * @since 2016年8月25日 11:53:55
 * @version v1.0.0
 * 
 */
public class SystemUserServiceImpl implements SystemUserService {
	
	private SystemUserDao systemUserDao;
	
	/**
	 * 获取系统用户列表
	 * @return
	 */
	public List<SystemUser> getAllSysUser(SystemUser systemUser){
		return systemUserDao.getAllSysUser(systemUser);
	}
}
