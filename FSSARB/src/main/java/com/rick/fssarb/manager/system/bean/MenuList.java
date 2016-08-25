package com.rick.fssarb.manager.system.bean;

import java.io.Serializable;

/**
 * Model class of menu_list.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class MenuList implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** ID. */
	private String id;

	/** 关联表ID. */
	private String linkedid;

	/** 名称. */
	private String name;

	/** 访问URL. */
	private String url;

	/** 菜单小图标. */
	private String menuicon;

	/** 创建人(系统用户名称). */
	private String createby;

	/** 创建时间. */
	private String createtime;

	/** 是否启用(0禁用,1启用,默认0). */
	private String enable;

	/** 备注. */
	private String comments;

	/**
	 * Constructor.
	 */
	public MenuList() {
	}

	/**
	 * Set the ID.
	 * 
	 * @param id
	 *            ID
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * Get the ID.
	 * 
	 * @return ID
	 */
	public String getId() {
		return this.id;
	}

	/**
	 * Set the 关联表ID.
	 * 
	 * @param linkedid
	 *            关联表ID
	 */
	public void setLinkedid(String linkedid) {
		this.linkedid = linkedid;
	}

	/**
	 * Get the 关联表ID.
	 * 
	 * @return 关联表ID
	 */
	public String getLinkedid() {
		return this.linkedid;
	}

	/**
	 * Set the 名称.
	 * 
	 * @param name
	 *            名称
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * Get the 名称.
	 * 
	 * @return 名称
	 */
	public String getName() {
		return this.name;
	}

	/**
	 * Set the 访问URL.
	 * 
	 * @param url
	 *            访问URL
	 */
	public void setUrl(String url) {
		this.url = url;
	}

	/**
	 * Get the 访问URL.
	 * 
	 * @return 访问URL
	 */
	public String getUrl() {
		return this.url;
	}

	/**
	 * Set the 菜单小图标.
	 * 
	 * @param menuicon
	 *            菜单小图标
	 */
	public void setMenuicon(String menuicon) {
		this.menuicon = menuicon;
	}

	/**
	 * Get the 菜单小图标.
	 * 
	 * @return 菜单小图标
	 */
	public String getMenuicon() {
		return this.menuicon;
	}

	/**
	 * Set the 创建人(系统用户名称).
	 * 
	 * @param createby
	 *            创建人(系统用户名称)
	 */
	public void setCreateby(String createby) {
		this.createby = createby;
	}

	/**
	 * Get the 创建人(系统用户名称).
	 * 
	 * @return 创建人(系统用户名称)
	 */
	public String getCreateby() {
		return this.createby;
	}

	/**
	 * Set the 创建时间.
	 * 
	 * @param createtime
	 *            创建时间
	 */
	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}

	/**
	 * Get the 创建时间.
	 * 
	 * @return 创建时间
	 */
	public String getCreatetime() {
		return this.createtime;
	}

	/**
	 * Set the 是否启用(0禁用,1启用,默认0).
	 * 
	 * @param enable
	 *            是否启用(0禁用,1启用,默认0)
	 */
	public void setEnable(String enable) {
		this.enable = enable;
	}

	/**
	 * Get the 是否启用(0禁用,1启用,默认0).
	 * 
	 * @return 是否启用(0禁用,1启用,默认0)
	 */
	public String getEnable() {
		return this.enable;
	}

	/**
	 * Set the 备注.
	 * 
	 * @param comments
	 *            备注
	 */
	public void setComments(String comments) {
		this.comments = comments;
	}

	/**
	 * Get the 备注.
	 * 
	 * @return 备注
	 */
	public String getComments() {
		return this.comments;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		MenuList other = (MenuList) obj;
		if (id == null) {
			if (other.id != null) {
				return false;
			}
		} else if (!id.equals(other.id)) {
			return false;
		}
		return true;
	}

}