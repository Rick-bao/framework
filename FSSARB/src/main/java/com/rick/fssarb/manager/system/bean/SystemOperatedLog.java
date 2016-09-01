package com.rick.fssarb.manager.system.bean;

import java.io.Serializable;

/**
 * Model class of system_operated_log.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class SystemOperatedLog implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** ID. */
	private String id;

	/** 操作类型(关联字典表). */
	private String type;

	/** 操作内容. */
	private String description;

	/** 创建人(系统用户名称). */
	private String createby;

	/** 创建时间. */
	private String createtime;

	/** 备注. */
	private String comments;

	/**
	 * Constructor.
	 */
	public SystemOperatedLog() {
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
	 * Set the 操作类型(关联字典表).
	 * 
	 * @param type
	 *            操作类型(关联字典表)
	 */
	public void setType(String type) {
		this.type = type;
	}

	/**
	 * Get the 操作类型(关联字典表).
	 * 
	 * @return 操作类型(关联字典表)
	 */
	public String getType() {
		return this.type;
	}

	/**
	 * Set the 操作内容.
	 * 
	 * @param description
	 *            操作内容
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	/**
	 * Get the 操作内容.
	 * 
	 * @return 操作内容
	 */
	public String getDescription() {
		return this.description;
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
		SystemOperatedLog other = (SystemOperatedLog) obj;
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
